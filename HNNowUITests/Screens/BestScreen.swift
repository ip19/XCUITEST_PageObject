//
//  BestScreen.swift
//  HNNow
//
//  Created by anton_test on 1/23/20.
//  Copyright © 2020 Nathaniel Fredericks. All rights reserved.
//

import Foundation
import XCTest

class BestScreen : BaseScreen {
    
    //MARK: ELEMENT SELECTORS:
    
    var bestTab: XCUIElement {
        return app.tables.buttons["Best"]
    }
    
    var backButton: XCUIElement {
       return app.navigationBars["_TtGC7SwiftUIP13$7fff2c68216028DestinationHosting"].buttons["HN Now"]
    }
    
    //MARK: ACTIONS METHODS:
    
    func tapOnNewTab() {
        bestTab.tap()
    }
    
    func tapOnRandomLink() {
        let numberCount = Int.random(in: 1...11)
        app.tables.children(matching: .cell).element(boundBy: numberCount).tap()
    }
    
    

    //MARK: VERIFICATION METHODS:
    
    
    
    //Note: For creatin new variables, please, use appropriate screen.
}
