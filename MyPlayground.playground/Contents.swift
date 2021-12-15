import UIKit

/**数组字典的声明和使用**/
var shoppingList = ["catfish","water","tulips","blue paint"]
shoppingList[1] = "bottle of water"
var occupations = [
    "Malcolm":"Captain",
    "Kaylee" :"Mechanic"
]

occupations["Kaylee"] = "Public Relations"

print(shoppingList)
print(occupations)

shoppingList.append("blue paint")
print(shoppingList)
shoppingList.remove(at: 0)
print(shoppingList)
//let emptyArray: [String] = []
//let emptyDictionary: [String: Float] = [:]

var emptyArray:[String] = []//声明一个空数组 var emptyArr2 = []不合法
var emptyDictionary :[String : Float] = [:]//声明一个空字典

/**控制流*/
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"//string后面的？表示这个类型是可选类型，可能为nil。
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}//switch 不一定要加break,因为匹配到case就会退出switch语句


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {//"_"这个是一个占位用的，因为在循环里面一直没有用到这个变量，所以名字存在不存在都没有问题
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

//下面这个while和repeat --while的区别，前者先判断再执行，后者先执行一次再判断
var n = 2
while n < 2 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 2
print(m)

//使用0..语法
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

/**函数和闭包**/
//基本结构
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person:"Bob", day: "Tuesday")

//参数标签
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
} //day 是参数标签，on是自定义参数标签，如果自定义参数标签的话，那么默认参数标签就不显示了
greet("John", on: "Wednesday")
//上面的这两个方法不算重复定义

//返回多个值
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}
let statistics = calculateStatistics(scores:[5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

//函数作为返回值
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

//函数做参数
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

//闭包
var result = numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

