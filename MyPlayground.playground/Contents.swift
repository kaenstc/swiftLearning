//: Playground - noun: a place where people can play

import UIKit

//1.字符串,和基础数据类型 
//2.let与var
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let applesSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

//Array & Dictionary
var shoppingList = ["catfish","water","tulips","blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "maloclm":"Captain",
    "Kaylee":"Mechanic",
]

occupations["Jayne"] = "Public Relations"
shoppingList = []
occupations = [:]

//控制语句
let individualScores = [75,43,103,87,12]
var teamScore = 0
for score in individualScores{
    if score > 50{
        teamScore += 3
    }else{
        teamScore += 1
    }
}
print(teamScore)

 // ?表达式声明的变量为可选类型
var optionalString: String? = "Hello"//不一定就必须是字符串类型
print(optionalString == nil)//需要?表达式声明了才可以和nil做比较,与OC不同,OC的所有对象都可以和nil直接做比较
var optionalName: String? = "John Appleseed"

var greeting = "Hello!"
optionalName = nil //可以赋值nil
if let name = optionalName{
    greeting = "Hello,\(name)"
}else{
    greeting = "Hello,\(optionalName)"
}

//Switches 的用法,不限制integers 可以用字符串 甚至在case 后面可以是判断语句
let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    print("必须要有default,而且必须写上表达式")
}

//遍历字典

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = Int.min
var min = Int.max
for (kind, numbers) in interestingNumbers {
    print(kind)
    for number in numbers {
        if number < min {
            min = number;
        }
        if number > largest {
            largest = number
        }
    }
}
print("min : \(min) , largest : \(largest)")


//while 循环
var n = 2
while n < 100 {
    n = n * 2
}
print(n)
//
//var m = 2
//repeat {
//    m = m * 2
//} while m < 100
//print(m)


//for 循环   
//0..<4 相当于[0,1,2,3], 0...4相当于 [0,1,2,3,4]
var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print(firstForLoop)

var secondForLoop = 0
for var i = 0; i < 4; ++i {
    secondForLoop += i
}
print(secondForLoop)


func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
print(greet("Bob","Tuesday"));
































