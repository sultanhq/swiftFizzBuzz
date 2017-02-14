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
    
    func testsScoreIncreasesOnPlay() {
        game.play()
        XCTAssertTrue(game.score == 1)
    }
}
