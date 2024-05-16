//Sort Array of Numbers in Ascending Order:
const numbersAsc = [5, 2, 8, 1, 4];
numbersAsc.sort((a, b) => a - b);
console.log(numbersAsc); // Output: [1, 2, 4, 5, 8]

//Sort Array of Numbers in Descending Order:
const numbersDesc = [5, 2, 8, 1, 4];
numbersDesc.sort((a, b) => b - a);
console.log(numbersDesc); // Output: [8, 5, 4, 2, 1]

//Find Minimum Value in an Array:
const Minnumbers = [5, 2, 8, 1, 4];
const minValue = Math.min(...Minnumbers);
console.log(minValue); // Output: 1

//Find Maximum Value in an Array:
const Maxnumbers = [5, 2, 8, 1, 4];
const maxValue = Math.max(...Maxnumbers);
console.log(maxValue); // Output: 8

//Filter Strings by Length:
const words = ['apple', 'banana', 'orange', 'kiwi', 'grape'];
const filteredWords = words.filter(word => word.length > 5);
console.log(filteredWords); // Output: ['banana', 'orange']

//Filter Strings by Specific Criteria:
const fruits = ['apple', 'banana', 'orange', 'kiwi', 'grape'];
const filteredFruits = fruits.filter(fruit => fruit.includes('a'));
console.log(filteredFruits); // Output: ['apple', 'banana', 'grape']

//Filter Objects by Property Value:
const products = [
  { name: 'Laptop', price: 1000 },
  { name: 'Phone', price: 500 },
  { name: 'Tablet', price: 300 }
];

const affordableProducts = products.filter(product => product.price < 1000);
console.log(affordableProducts);
// Output: [{ name: 'Phone', price: 500 }, { name: 'Tablet', price: 300 }]

//Filter Objects by Multiple Criteria:
const users = [
  { name: 'John', age: 30, isAdmin: true },
  { name: 'Alice', age: 25, isAdmin: false },
  { name: 'Bob', age: 35, isAdmin: true }
];

const admins = users.filter(user => user.isAdmin);
console.log(admins);
// Output: [{ name: 'John', age: 30, isAdmin: true }, { name: 'Bob', age: 35, isAdmin: true }]

// Anonymous arrow function to square a number
const square = (x) => x * x;

console.log(square(5)); // Output: 25

// Object with properties
const User = {
  firstName: 'Raphael',
  lastName: 'Africano',
  age: 29
};

// Destructuring assignment to extract properties
const { firstName, lastName, age } = User;

console.log(firstName); // Output: John
console.log(lastName);  // Output: Doe
console.log(age);       // Output: 30
console.log(`firstname: ${firstName} lastname: ${lastName} age: ${age}`)

// Object literal representing a person
const person = {
  firstName: 'Raphael',
  lastName: 'Africano',
  age: 29,
  greet() {
    return `Hello, my name is ${this.firstName} ${this.lastName}.`;
  }
};

console.log(person.firstName); // Output: John
console.log(person.age);       // Output: 30
console.log(person.greet());   // Output: Hello, my name is John Doe.