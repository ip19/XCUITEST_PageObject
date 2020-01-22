//
//  TopScreen.swift
//  HNNowUITests
//
//  Created by ievgenii on 22.01.2020.
//  Copyright © 2020 Nathaniel Fredericks. All rights reserved.
//

import Foundation
import XCTest

class NewScreen: BaseScreen {
    
    //MARK: ELEMENT SELECTORS:
    
    var newTab: XCUIElement {
        return app.tables.buttons["New"]
    }
    
    
    //MARK: ACTIONS METHODS:
    
    func tapOnNewTab() {
        newTab.tap()
    }
    
    //MARK: VERIFICATION METHODS:
    
    
    //Note: For creatin new variables, please, use appropriate screen.
}
