import UIKit

//let numbers = [1, 2, 4, 6, 8, 9, 11, 13, 16, 17, 20]
let numbers: [Int] = Array(1...1000)

func linearSearch(searchValue: Int, array: [Int]) -> Bool {
    
    for num in array {
        if num == searchValue {
            return true
        }
    }
    return false
}

print(linearSearch(searchValue: 5, array: numbers))

func binarySearch(searchValue: Int, array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        print("Middle value: \(middleValue), left index is \(leftIndex) and right index is \(rightIndex), [\(array[leftIndex]), \(array[rightIndex])]")
        
        if middleValue == searchValue {
            return true
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    
    return false
}

print(binarySearch(searchValue: 999, array: numbers))
