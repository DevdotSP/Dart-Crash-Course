class TreeNode {
  late String value;
  late List<TreeNode> children;

  TreeNode(this.value) : children = []; // Initialize children as an empty list

  void addChild(TreeNode childNode) {
    children.add(childNode);
  }

  // Print the tree in a formatted manner
  void printTree(int indent) {
    // Print current node's value with indentation
    print(' ' * indent + value);

    // Recursively print children
    for (var child in children) {
      child.printTree(indent); // Same indentation for children
    }
  }

  // Print the tree in a reversed format
  void printTreeReversed(int indent) {
    // Print current node's value with indentation
    print(' ' * indent + value);

    // Print children in reversed order, recursively
    for (int i = children.length - 1; i >= 0; i--) {
      children[i].printTreeReversed(
          indent + value.length - 1); // Adjust indentation for children
    }
  }
}

// Build a tree structure to represent the reverse triangle pattern
TreeNode buildReverseTriangleTree() {
  TreeNode root = TreeNode('*******'); // Create the root node

  // Create child nodes and add them to the root node
  TreeNode child1 = TreeNode('  *');
  TreeNode child2 = TreeNode(' ***');
  TreeNode child3 = TreeNode('*****');

  root.addChild(child1);
  root.addChild(child2);
  root.addChild(child3);

  return root;
}

void main() {
  // Build the tree representing the reverse triangle pattern
  TreeNode reverseTriangleTree = buildReverseTriangleTree();

  // Print the tree structure
  print('Reverse Triangle Structure:');
  reverseTriangleTree
      .printTree(0); // Start printing from the root with zero indentation

  // Print the tree structure in reversed order
  print('Reversed Reverse Triangle Structure:');
  reverseTriangleTree.children.reversed.forEach((child) {
    child.printTreeReversed(
        0); // Start printing each child node in reversed order
  });
}
