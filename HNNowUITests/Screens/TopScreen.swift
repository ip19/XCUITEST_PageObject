//
//  TopScreen.swift
//  HNNowUITests
//
//  Created by anton_test on 1/24/20.
//  Copyright © 2020 Nathaniel Fredericks. All rights reserved.
//

import Foundation
import XCTest

class TopScreen : BaseScreen {

    //MARK: ELEMENT SELECTORS:
    
    var topTab: XCUIElement {
        return app.tables.buttons["Top"]
    }
    
    var elemet: XCUIElementQuery {
        XCUIApplication().tables.buttons
    }
    
    func elementCount() -> Int {
        return elemet.count
    }
    
    //MARK: ACTIONS METHODS:
    
    
    func cellCount() {
        let cells = app.cells
        XCTAssertEqual(cells.count, 1)
        
    }

    func tapOnFirstLink() {
        app.tables.children(matching: .cell).element(boundBy: 1).tap()
        
        
    func tapOnTopTab() {
        topTab.tap()
    }
        
    }    //MARK: VERIFICATION METHODS:}
    
    
    var checkSafari: XCUIElement {
        return app.buttons["Open in Safari"]
    }
    
    var checkShare: XCUIElement {
        return app.buttons["Share the Story"]
    }
}
