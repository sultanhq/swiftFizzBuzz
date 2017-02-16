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
        let response = game.play(move: "Fizz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrong() {
        game.score = 1
        let response = game.play(move: "Fizz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testCorrectBuzzMove() {
        game.score = 4
        let response = game.play(move: "Buzz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIncorrectBuzzMove() {
        game.score = 5
        let response = game.play(move: "Buzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testCorrectFizzBuzzMove() {
        game.score = 14
        let response = game.play(move: "FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIncorrectFizzBuzzMove() {
        game.score = 16
        let response = game.play(move: "FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testCorrectNumberMove() {
        game.score = 1
        let response = game.play(move: "2")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testInCorrectNumberMove() {
        game.score = 2
        let response = game.play(move: "3")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: "1")
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldNewScore() {
        let response = game.play(move: "1")
        XCTAssertNotNil(response.score)
    }
    
    
}


