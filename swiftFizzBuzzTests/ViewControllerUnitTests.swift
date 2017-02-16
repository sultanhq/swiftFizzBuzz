//
//  ViewControllerUnitTests.swift
//  swiftFizzBuzz
//
//  Created by Rob Adams on 15/02/2017.
//  Copyright © 2017 Rob Adams. All rights reserved.
//

import XCTest
@testable import swiftFizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController : ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testMove1IncrementsScore() {
        viewController.play(move: .Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncreamentScore() {
        viewController.play(move: .Number)
        viewController.play(move: .Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
        
    }
    
    func testFizzIncreamentScore() {
        viewController.game?.score = 2
        viewController.play(move: .Fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncreamentScore() {
        viewController.game?.score = 4
        viewController.play(move: .Buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncreamentScore() {
        viewController.game?.score = 14
        viewController.play(move: .FizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testFizzOn1NotIncreamentScore() {
        viewController.game?.score = 1
        viewController.play(move: .Fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
}
