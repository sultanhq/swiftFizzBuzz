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
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleBy(divisor: 3, number: 3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleBy(divisor: 3, number: 4)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleBy(divisor: 5, number: 10)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFive() {
        let result = brain.isDivisibleBy(divisor: 5, number: 4)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFiveAndThree() {
        let result = brain.isDivisibleBy(divisor: 15, number: 30)

        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFiveAndThree() {
        let result = brain.isDivisibleBy(divisor: 15, number: 4)
        XCTAssertEqual(result, false)
    }
    
}
