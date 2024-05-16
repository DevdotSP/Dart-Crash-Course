<?php
// Sort Array of Numbers in Ascending Order:
$numbersAsc = [5, 2, 8, 1, 4];
sort($numbersAsc);
echo "Sorted Array (Ascending Order):\n";
print_r($numbersAsc); // Output: [1, 2, 4, 5, 8]
echo "<br>\n";

// Sort Array of Numbers in Descending Order:
$numbersDesc = [5, 2, 8, 1, 4];
usort($numbersDesc, function ($a, $b) {
    return $b <=> $a;
});
echo "Sorted Array (Descending Order):\n";
print_r($numbersDesc); // Output: [8, 5, 4, 2, 1]
echo "<br>\n";

// Find Minimum Value in an Array:
$minNumbers = [5, 2, 8, 1, 4];
$minValue = min($minNumbers);
echo "Minimum Value:\n";
echo $minValue . "\n"; // Output: 1
echo "<br>\n";

// Find Maximum Value in an Array:
$maxNumbers = [5, 2, 8, 1, 4];
$maxValue = max($maxNumbers);
echo "Maximum Value:\n";
echo $maxValue . "\n"; // Output: 8
echo "<br>\n";
?>
