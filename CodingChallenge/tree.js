function printTree(height) {
    for (let row = 1; row <= height; row++) {
        let treeRow = '';

        // Append spaces before the stars to center the tree
        for (let space = 0; space < height - row; space++) {
            treeRow += ' ';
        }

        // Append stars for the current row
        for (let star = 0; star < 2 * row - 1; star++) {
            treeRow += '*';
        }

        console.log(treeRow);
    }
}

// Example usage: Print a tree of height 5
console.log("Tree Structure:");
printTree(5);
