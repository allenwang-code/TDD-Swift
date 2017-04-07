//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by 王適緣 on 2017/4/7.
//  Copyright © 2017年 王適緣. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var vc: ViewController!
    
    override func setUp() {
        super.setUp()
       
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow?.rootViewController = vc
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMove1IncrementsScore() {
        vc.play(move: "1")
        let newScore = vc.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementsScore() {
        vc.play(move: "1")
        vc.play(move: "2")
        let newScore = vc.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(vc.game)
    }
}
