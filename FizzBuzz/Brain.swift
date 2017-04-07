//
//  Brain.swift
//  FizzBuzz
//
//  Created by 王適緣 on 2017/4/7.
//  Copyright © 2017年 王適緣. All rights reserved.
//

import Foundation

class Brain {

//    func isDivisibleByThree(number: Int) -> Bool {
//        if number % 3 == 0 {
//            return true
//        } else {
//            return false
//        }
//    }
//    
//    func isDivisibleByFive(num: Int) -> Bool {
//        if num % 5 == 0 {
//            return true
//        } else {
//            return false
//        }
//    }
//    
//    func isDivisibleByFifteen(num: Int) -> Bool {
//        if num % 15 == 0 {
//            return true
//        } else {
//            return false
//        }
//    }
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func check(number: Int) -> String {
        if isDivisibleBy(divisor: 15, number: number) {
            return "FizzBuzz"
        } else if isDivisibleBy(divisor: 5, number: number) {
            return "Buzz"
        } else if isDivisibleBy(divisor: 3, number: number) {
            return "Fizz"
        }
        
        return ""
    }
    
}
