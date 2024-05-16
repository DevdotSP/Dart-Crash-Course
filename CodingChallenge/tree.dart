// Define a TreeNode class to represent nodes in the tree
class TreeNode {
  String value;
  late List<TreeNode> children;

  TreeNode(this.value) {
    children = []; // Initialize children later
  }

  void addChild(TreeNode childNode) {
    children.add(childNode);
  }
}

void printTreeOfStars(int height) {
  for (int i = 1; i <= height; i++) {
    // Calculate the number of spaces and stars for the current level
    int numSpaces = height - i; // leading spaces
    int numStars = 2 * i - 1; // number of stars

    // Construct the string for the current level
    String treeRow = ' ' * numSpaces + '*' * numStars;

    // Print the current level
    print(treeRow);
  }
}

void main() {
  // Define the height of the tree (number of levels)
  int treeHeight = 5;

  // Print the tree structure of asterisks
  print('Tree Structure of Stars:');
  printTreeOfStars(treeHeight);
}
