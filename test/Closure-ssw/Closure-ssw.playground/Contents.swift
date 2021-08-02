//함수타입
func testOne(value1: Int, value2: Double) -> Int {
    return value1 + Int(value2)
}

func testTwo(value1: [String]) -> Int {
    return value1.count
}

func testThree(value1: String, value2: Int) -> [String: Int] {
    return [value1: value2]
}


//클로저
let testOneClosure: (Int, Double) -> Int = { (value1: Int, value2: Double) -> Int in
    return value1 + Int(value2)
}

let testTwoClosure: ([String]) -> Int = { (value1: [String]) -> Int in
    return value1.count
}

let testThreeClosure: (String, Int) -> [String: Int] = { (value1: String, value2: Int) -> [String: Int] in
    return [value1: value2]
}


//클로저를 매개변수로 받는 함수
func sayHello( handler: (String) -> Void ) {
    handler("Hello")
}

let fn: (String) -> Void = { (arg: String) -> Void in
    print(arg)
}

sayHello(handler: fn)

sayHello(handler: { (arg: String) -> Void in
    print(arg)
})

sayHello { (arg: String) in
    print(arg)
}


//map, filter, reduce
//for 문을 먼저 만들고 map, filter, reduce를 이용해 다시 활용하라
//배열에 있는 값들을 세제곱하고 그 값들을 더하라
let numbers = [11, 22, 33, 44, 55]
var firstValue = 0

for number in numbers {
    firstValue += (number * number * number)
}
print(firstValue)     //299475


let mapTest = numbers.map( { number in
    return number * number * number
})
print(mapTest)     //[1331, 10648, 35937, 85184, 166375]


let filterTest = numbers.filter { number in
    return number * number * number > 10000
}
print(filterTest)    //[22, 33, 44, 55]


let reduceTest = numbers.reduce(0) { (prevNum, number) in
    return prevNum + number * number * number }
print(reduceTest)     //299475


//map, reduce 활용
let mapReduceTest = numbers.map( { number in
    return number * number * number}).reduce(0, { (prevNum, number) in
        return prevNum + number
        })
print(mapReduceTest)     //299475

