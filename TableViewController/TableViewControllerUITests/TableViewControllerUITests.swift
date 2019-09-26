//
//  TableViewControllerUITests.swift
//  TableViewControllerUITests
//
//  Created by Eugene Berezin on 9/23/19.
//  Copyright © 2019 Eugene Berezin. All rights reserved.
//

import XCTest

class TableViewControllerUITests: XCTestCase {

    override func setUp() {
       
        continueAfterFailure = false
        let app = XCUIApplication()
              app.launch()

        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        XCUIApplication().tables/*@START_MENU_TOKEN@*/.staticTexts["nssl0046.jpg"]/*[[".cells.staticTexts[\"nssl0046.jpg\"]",".staticTexts[\"nssl0046.jpg\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
              
                        
                        

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
