//
//  main.swift
//  Homework
//
//  Created by Andrii Nikitenko on 25.10.16.
//  Copyright © 2016 Andrii Nikitenko. All rights reserved.
//

import Foundation
var a : String
var b : Double
var c : Double
var i : Int
var e : Int
var temp : String
var result : Double
var arraY : [String]
var arraY2 : [String]
func calc(Array arraY: [String]) -> [String]{
    var arraY = arraY
    var b : Double
    var c : Double
    var i : Int
    var result : Double
    while arraY.count != 1 {
        
        if arraY.index(of: "*") != nil{
            i = arraY.index(of: "*")!
            b = Double(arraY[i - 1])!
            c = Double(arraY[i + 1])!
            result = b*c
            arraY [i - 1] = String(result)
            arraY.remove(at: i)
            arraY.remove(at: i)
            
        }
        else if arraY.index(of: "/") != nil{
            i = arraY.index(of: "/")!
            b = Double(arraY[i - 1])!
            c = Double(arraY[i + 1])!
            result = b/c
            arraY[i - 1] = String(result)
            arraY.remove(at: i)
            arraY.remove(at: i)
        
        }
        else if arraY.index(of: "+") != nil{
            i = arraY.index(of: "+")!
            b = Double(arraY[i - 1])!
            c = Double(arraY[i + 1])!
            result = b+c
            arraY[i - 1] = String(result)
            arraY.remove(at: i)
            arraY.remove(at: i)
            
        }
        else if arraY.index(of: "+") != nil{
            i = arraY.index(of: "+")!
            b = Double(arraY[i - 1])!
            c = Double(arraY[i + 1])!
            result = b-c
            arraY[i - 1] = String(result)
            arraY.remove(at: i)
            arraY.remove(at: i)
            
        }
        
        
    }
    return arraY
}

print(" Please enter your equation ")
a = readLine()!
if a.contains("("){

    arraY = [String(describing: a.characters.first!)]
    a.characters.removeFirst()

    for index in a.characters{
        if index == "*" || index == "/" || index == "+" || index == "-" || index == "(" || index == ")" {
            temp = String(index)
            arraY += [temp]
        }
        else {
            if arraY.last != "*" && arraY.last != "/" && arraY.last != "+" && arraY.last != "-" && arraY.last != "(" && arraY.last != ")" {
                temp = arraY.last! + String(index)
                arraY.removeLast()
                arraY += [temp]
            }
            else { arraY += [String(index)]}
        }


    }
    arraY2 = []


    while arraY.count != 1 {



        if arraY.index(of: "(") != nil && arraY.index(of: ")") != nil{
            i = arraY.index(of: "(")! + 1
            e = arraY.index(of: ")")! - 1

            for gap in arraY[i...e]{

                arraY2 += [gap]

            }


            print(arraY2)
            let gap = arraY.index(of: "(")!
            let gapCounter = calc(Array: arraY2)
            arraY[gap] = gapCounter.first!
            e = arraY.index(of: ")")!
            arraY[i...e] = []

        }
        print(arraY)


        if arraY.contains(")") {continue}
        else {break}



    }
    print(calc(Array: arraY))
}


else{
    arraY = [String(describing: a.characters.first!)]
    a.characters.removeFirst()

    for index in a.characters{
        if index == "*" || index == "/" || index == "+" || index == "-" || index == "(" || index == ")" {
            temp = String(index)
            arraY += [temp]
        }
        else {
            if arraY.last != "*" && arraY.last != "/" && arraY.last != "+" && arraY.last != "-" && arraY.last != "(" && arraY.last != ")" {
                temp = arraY.last! + String(index)
                arraY.removeLast()
                arraY += [temp]
            }
            else { arraY += [String(index)]}
        }


    }
    print(calc(Array: arraY))

}
  
