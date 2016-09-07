
let numberToFind = 99

var numbersOneToAThousand = [Int]()

for number in 1...1000 {
    numbersOneToAThousand.append(number)
}

func binarySearchForANumber(searchValue: Int, numbers: [Int]) -> Bool {
    var startIndex = 0
    var endIndex = numbers.count - 1
    
    
    while startIndex <= endIndex {
        let middleIndex = (startIndex + endIndex) / 2
        let middleValue = numbers[middleIndex]
        
        if searchValue == middleValue {
            return true
        } else if searchValue < middleValue {
            endIndex = middleIndex - 1
        } else if searchValue > middleValue {
            startIndex = middleIndex + 1
        }
    }
    
    return false
}

print(binarySearchForANumber(numberToFind, numbers: numbersOneToAThousand))