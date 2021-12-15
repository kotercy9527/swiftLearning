import UIKit

//数组字典的声明和使用
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




