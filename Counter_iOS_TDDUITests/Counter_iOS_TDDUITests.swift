//
//  Counter_iOS_TDDUITests.swift
//  Counter_iOS_TDDUITests
//
//  Created by Guillermo Cifre on 19/11/24.
//

import XCTest
@testable import Counter_iOS_TDD

final class Counter_iOS_TDDUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    @MainActor
    func testAllUIComponentsExist() throws {
        let app = XCUIApplication()
        app.launch()
        // Arrange
        let counterLabel = app.staticTexts["counter"]
        let plusButton = app.buttons["incrementButton"]
        let minusButton = app.buttons["decrementButton"]
        let resetButton = app.buttons["resetButton"]
        // Assert
        XCTAssert(counterLabel.waitForExistence(timeout: 0.5))
        XCTAssert(plusButton.waitForExistence(timeout: 0.5))
        XCTAssert(minusButton.waitForExistence(timeout: 0.5))
        XCTAssert(resetButton.waitForExistence(timeout: 0.5))
    }

    @MainActor
    func testIncrementCountWhenButtonPlusIsTaped() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Arrange
        let plusButton = app.buttons["incrementButton"]
        // Act
        plusButton.tap()
        let result = app.staticTexts["counter"].label
        // Assert
        XCTAssertEqual(result, "1")
    }
    
    @MainActor
    func testDecrementAndResetButtonsAreDisabledWhenCounterIsZero() throws {
        let app = XCUIApplication()
        app.launch()
        // Arrange
        let minusButton = app.buttons["decrementButton"]
        let resetButton = app.buttons["resetButton"]
        // Act
        XCTAssert(!minusButton.isEnabled)
        XCTAssert(!resetButton.isEnabled)
    }

    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
