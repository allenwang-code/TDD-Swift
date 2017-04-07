//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by 王適緣 on 2017/4/7.
//  Copyright © 2017年 王適緣. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {

    let brain = Brain()

    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testSayFizzBuzz() {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, "FizzBuzz")
    }
    
    func testSayBuzz() {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, "Buzz")
    }
    
    func testSayFizz() {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, "Fizz")
    }
    
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleBy(divisor: 3 ,number: 1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleBy(divisor: 5 ,number: 5)
        XCTAssertEqual(result, true)
    }
    
    func testIsDivisibleByFifteen() {
        let result = brain.isDivisibleBy(divisor: 15 ,number: 15)
        XCTAssertEqual(result, true)
    }
}
