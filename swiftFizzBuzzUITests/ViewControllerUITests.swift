//
//  ViewControllerUITests.swift
//  swiftFizzBuzz
//
//  Created by Rob Adams on 16/02/2017.
//  Copyright © 2017 Rob Adams. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTapNumberButtonIncreamentScore() {
        XCUIDevice.shared().orientation = .portrait
        
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonTwiceIncreamentScoreTo2() {
        XCUIDevice.shared().orientation = .portrait
        
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapFizzButtonIncreamentScore() {
        
        XCUIDevice.shared().orientation = .portrait
        
        let app = XCUIApplication()
        let fizzButton = app.buttons["fizzButton"]
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap  ()
        fizzButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }

    func testTapBuzzButtonIncreamentScore() {
        
        XCUIDevice.shared().orientation = .portrait
        
        let app = XCUIApplication()
        let buzzButton = app.buttons["buzzButton"]
        let fizzButton = app.buttons["fizzButton"]
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap  ()
        fizzButton.tap()
        numberButton.tap  ()
        buzzButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
    }
    
}
