//
//  BaseTest.swift
//  HNNowUITests
//
//  Created by ievgenii on 22.01.2020.
//  Copyright © 2020 Nathaniel Fredericks. All rights reserved.
//

import Foundation
import XCTest

class BaseTest: XCTestCase {
    
    
    //what is this and I have created it?
    let newScreen = NewScreen()
    let bestScreen = BestScreen()
    let topScreen = TopScreen()
    
    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
    }
    
}
