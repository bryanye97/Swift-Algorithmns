var numbersFromOneToAThousand = [Int]()

for number in 1...1000 {
    numbersFromOneToAThousand.append(number)
}

for number in numbersFromOneToAThousand {
    if number % 15 == 0 {
        print("FizzBuzz")
    } else if number % 3 == 0 {
        print("Fizz")
    } else if number % 5 == 0 {
        print("Buzz")
    } else {
        print(number)
    }
}