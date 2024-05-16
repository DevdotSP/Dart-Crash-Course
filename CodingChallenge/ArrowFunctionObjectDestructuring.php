<?php
// Function to square a number
function square($x) {
    return $x * $x;
}

echo square(5) . "\n"; // Output: 25

// Array representing a user with properties
$user = [
    'firstName' => 'Raphael',
    'lastName' => 'Africano',
    'age' => 29
];

// Extract properties from the user array
$firstName = $user['firstName'];
$lastName = $user['lastName'];
$age = $user['age'];

echo $firstName . "\n"; // Output: Raphael
echo $lastName . "\n";  // Output: Africano
echo $age . "\n";       // Output: 29

// Define a class representing a person with properties and a greet method
class Person {
    public $firstName;
    public $lastName;
    public $age;

    // Constructor for initializing the person object
    public function __construct($firstName, $lastName, $age) {
        $this->firstName = $firstName;
        $this->lastName = $lastName;
        $this->age = $age;
    }

    // Method to greet the person
    public function greet() {
        return "Hello, my name is $this->firstName $this->lastName.";
    }
}

// Create a new Person object
$person = new Person($firstName, $lastName, $age);

echo $person->firstName . "<br>\n"; // Output: Raphael
echo $person->age . "<br>\n";       // Output: 29
echo $person->greet() . "<br>\n";   // Output: Hello, my name is Raphael Africano.
?>
