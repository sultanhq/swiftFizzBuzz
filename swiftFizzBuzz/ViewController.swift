//
//  ViewController.swift
//  swiftFizzBuzz
//
//  Created by Rob Adams on 14/02/2017.
//  Copyright © 2017 Rob Adams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game?
    
    var gameScore: Int? {
        didSet {
            guard let checkedGameScore = gameScore else {
                print("gameScore is nil ")
                return
            }
            numberButton.setTitle("\(checkedGameScore)", for: .normal)
        }
    }

    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        gameScore = checkedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: Moves) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        switch sender {
        case numberButton:
            play(move: Moves.Number)
        case fizzButton:
            play(move: Moves.Fizz)
        case buzzButton:
            play(move: Moves.Buzz)
        case fizzBuzzButton:
            play(move: Moves.FizzBuzz)
        default:
            print("Invalid selection")
        }
    }
}

