import UIKit

//ASIGNMENT OPERATOR
//The assignment operator (a = b) initializes or updates the value of a with the value of b:
let b = 10
var a = 5
a = b

// ARITHMETIC OPERATORS

1 + 2       // equals 3      + ADDITION
5 - 3       // equals 2      - SUBSTRACTION
2 * 3       // equals 6      * MULTIPLICATION
10.0 / 2.5  // equals 4.0    / DIVISION
9 % 4       // equals 1      % REMAINDER OPERATOR

//The addition operator is also supported for String concatenation:
print("hello " + "world")

// COMPOUND ASSIGNMENT OPERATORS
/*
 A list of all assignment operators:

 Operator    Example        Same As
    =        x = 5        x = 5
    +=        x += 3        x = x + 3
    -=        x -= 3        x = x - 3
    *=        x *= 3        x = x * 3
    /=        x /= 3        x = x / 3
    %=        x %= 3        x = x % 3
*/
var c = 1
c += 2  // c = c +2 the same


// COMPARISON OPERATORS
/*Comparison operators are used to compare two values, and returns a Boolean value: either true or false.

Operator    Name                          Example
   ==        Equal to                     x == y
   !=        Not equal to                 x != y
   >         Greater than                 x > y
   <         Less than                    x < y
   >=        Greater than or equal to     x >= y
   <=        Less than or equal to        x <= y
*/

// LOGICAL OPERATORS
//Logical operators are used to determine the logic between variables or values:

//Logical NOT OPERATOR
// (!a)  Reverse the result, returns false it was true

let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}else {
    print("Nothing")
}

//Logical AND  (a && b)
// The logical AND operator (a && b) creates logical expressions where both values must be true for the overall expression to also be true.
let enteredDoorCode = true
let passedRetinaScan = true
if (enteredDoorCode && passedRetinaScan) {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

//Logical OR   (a || b)
//The logical OR operator (a || b) is an infix operator made from two adjacent pipe characters. You use it to create logical expressions in which only one of the two values has to be true for the overall expression to be true.

let hasDoorKey = false
let knowsOverridePassword = true
if (hasDoorKey || knowsOverridePassword) {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

// COMBINING LOGICAL OPERATORS
// You can combine multiple logical operators to create longer compound expressions:

if ((enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword) {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
