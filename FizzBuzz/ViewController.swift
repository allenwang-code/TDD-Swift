//
//  ViewController.swift
//  FizzBuzz
//
//  Created by 王適緣 on 2017/4/5.
//  Copyright © 2017年 王適緣. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameScore: Int = 0
    var game: Game?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: String) -> Bool {
        guard let game = game else {
            return false
        }
        game.play(move: move)
        gameScore = game.score
        return true
    }
}

