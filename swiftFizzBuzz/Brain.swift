//
//  Brain.swift
//  swiftFizzBuzz
//
//  Created by Rob Adams on 14/02/2017.
//  Copyright © 2017 Rob Adams. All rights reserved.
//

import Foundation

class Brain {
    
    func isDivisibleByThree(number: Int) -> Bool {
        if number % 3 == 0 {
            return true
        }
        else {
            return false
        }
        
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        if number % 5 == 0 {
            return true
        }
        else {
            return false
        }
        
    }
    
    func isDivisibleByFiveAndThree(number: Int) -> Bool {
        if (isDivisibleByThree(number: number) && isDivisibleByFive(number: number)) {
            return true
        }
        else {
            return false
        }
        
    }
    
}
