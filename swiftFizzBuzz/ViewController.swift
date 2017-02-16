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
            numberButton.setTitle("1", for: .normal)
        }
    }

    @IBOutlet weak var numberButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
    @IBAction func buttonTapped(_ sender: Any) {
        play(move: "1")
    }
}

