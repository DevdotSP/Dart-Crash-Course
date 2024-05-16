class TreeNode {
  final String label;
  final List<TreeNode> children;

  TreeNode(this.label, [this.children = const []]);

  void printTree([String prefix = '', bool isLast = true]) {
    print(prefix + (isLast ? '└── ' : '├── ') + label);

    for (int i = 0; i < children.length; i++) {
      children[i].printTree(
          prefix + (isLast ? '    ' : '│   '), i == children.length - 1);
    }
  }
}

void main() {
  // Create a sample reverse tree structure
  var rootNode = TreeNode('A', [
    TreeNode('B', [
      TreeNode('E', [
        TreeNode('I'),
        TreeNode('J'),
      ]),
      TreeNode('F', [
        TreeNode('K'),
      ]),
    ]),
    TreeNode('C', [
      TreeNode('G'),
    ]),
    TreeNode('D', [
      TreeNode('H', [
        TreeNode('L'),
        TreeNode('M'),
      ]),
    ]),
  ]);

  // Print the reverse tree structure
  print('Reverse Tree:');
  rootNode.printTree();
}
