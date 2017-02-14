//
//  BrainTests.swift
//  swiftFizzBuzz
//
//  Created by Rob Adams on 14/02/2017.
//  Copyright © 2017 Rob Adams. All rights reserved.
//

import XCTest
@testable import swiftFizzBuzz

class BrainTests: XCTestCase {
    
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 4)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(number: 10)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFive() {
        let result = brain.isDivisibleByFive(number: 4)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(number: 30)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFiveAndThree() {
        let result = brain.isDivisibleByFifteen(number: 4)
        XCTAssertEqual(result, false)
    }
    
    func testSayFizz() {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, "Fizz")
    }
    
    func testSayBuzz() {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, "Buzz")
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, "FizzBuzz")
    }
    
    func testReturnNumber(){
        let result = brain.check(number: 4)
        XCTAssertEqual(result, "4")
    }
}
