import UIKit

//let numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

var numbers = 1...1000

for i in numbers {
    if i % 15 == 0 {
        print("\(i) FizzBuzz")
    } else if i % 3 == 0 {
        print("\(i) Fizz")
    } else if i % 5 == 0 {
        print("\(i) Buzz")
    }
}
