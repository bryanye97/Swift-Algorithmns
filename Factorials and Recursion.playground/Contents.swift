let valueToUseFactorialFunctionOn: UInt = 4

func factorialOfValue(value: UInt) -> UInt {
    
    if value == 0 {
        return 1
    }
    
    var product: UInt = 1
    
    for i in 1...value {
        product *= i
    }
    
    return product
}

print(factorialOfValue(valueToUseFactorialFunctionOn))

func recursiveFactorialOfValue(value: UInt) -> UInt {
    
    if value == 0 {
        return 1
    }
    
    return value * recursiveFactorialOfValue(value - 1)
}

print(recursiveFactorialOfValue(valueToUseFactorialFunctionOn))
