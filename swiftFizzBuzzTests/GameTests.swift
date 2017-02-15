//
//  GameTests.swift
//  swiftFizzBuzz
//
//  Created by Rob Adams on 14/02/2017.
//  Copyright © 2017 Rob Adams. All rights reserved.
//

import XCTest
@testable import swiftFizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testsGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
        
    }
    
    func testScoreIncreasesOnPlay() {
        let _ = game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }

    func testIfMoveIsRight() {
        game.score = 2
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrong() {
        game.score = 1
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, false)
    }
    
    func testCorrectBuzzMove() {
        game.score = 4
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, true)
    }
    
    func testIncorrectBuzzMove() {
        game.score = 5
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, false)
    }
    
}


