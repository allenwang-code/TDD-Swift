//
//  Game.swift
//  FizzBuzz
//
//  Created by 王適緣 on 2017/4/7.
//  Copyright © 2017年 王適緣. All rights reserved.
//

import Foundation

class Game {
    var score = 0
    var brain = Brain()
    
    func play(move: String) -> Bool {
        score += 1
        
        let result = brain.check(number: score)
        if result == move {
            return true
        } else {
            return false
        }
    }
   
}
