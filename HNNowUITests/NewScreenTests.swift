//
//  HNNowUITests.swift
//  HNNowUITests
//
//  Created by Nathaniel Fredericks on 2019-06-09.
//  Copyright © 2019 Nathaniel Fredericks. All rights reserved.
//

import XCTest

class NewScreenTests: BaseTest {
    
    //MARK: Test 1
    func testRedirectionToNewScreen() {
        newScreen.tapOnNewTab()
        XCTAssert(newScreen.newTab.isSelected, "New tab isn't selected")
    }
    
    //MARK: Test 2
    /*
     1. Navigate to Best tab
     2. Click on random link-button from the list
     3. verify if redirected to web page
    */
    
    func testRedirectionToRandomLink() {
        bestScreen.tapOnNewTab()
        bestScreen.tapOnRandomLink()
        XCTAssert(bestScreen.backButton.exists, "")
    }
    
    //MARK: Test 3
    /*
     1. Open Top tab (don't need any special step)
     2. Count items in the list
     3. verify if amount > 5
    */
    
    func testCellCount() {
        XCTAssertGreaterThan(XCUIApplication().tables.buttons.count, 5)
        
    }
    
    //MARK: Test 4
    /*
     1. Open Top tab (don't need any special step)
     2. Click on the first link-button
     3. verify if navigation buttons are hittable (upper pight corner)
    */
    
    func testFirstLinkTap() {
        topScreen.tapOnFirstLink()
        XCTAssert(topScreen.checkSafari.isEnabled && topScreen.checkShare.isEnabled, "")
    }
    
    //MARK: Test 5
    /*
     1. Open New tab
     2. verify if two others are deselected
    */

    func testNewScreen() {
        newScreen.tapOnNewTab()
        XCTAssert(!bestScreen.bestTab.isSelected && !topScreen.topTab.isSelected, "New tab is selected")
    }
}
