<?php

function printTreeOfStars($height) {
    for ($i = 1; $i <= $height; $i++) {
        // Calculate the number of spaces and stars for the current level
        $numSpaces = $height - $i; // leading spaces
        $numStars = 2 * $i - 1; // number of stars

        // Construct the tree row string
        $treeRow = str_repeat(' ', $numSpaces) . str_repeat('*', $numStars);

        // Print the current level
        echo $treeRow . PHP_EOL;
    }
}

// Define the height of the tree (number of levels)
$treeHeight = 20;

// Print the tree structure of asterisks
echo "Tree Structure of Stars:" . PHP_EOL;
printTreeOfStars($treeHeight);

?>