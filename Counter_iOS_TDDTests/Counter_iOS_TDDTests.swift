//
//  Counter_iOS_TDDTests.swift
//  Counter_iOS_TDDTests
//
//  Created by Guillermo Cifre on 19/11/24.
//

import XCTest
@testable import Counter_iOS_TDD

final class Counter_iOS_TDDTests: XCTestCase {

    override func setUpWithError() throws {}

    override func tearDownWithError() throws {}

    func testIncrementCount() {
        // Arrange
        let viewModel = CounterViewModel()
        // Act
        viewModel.increment()
        // Assert
        XCTAssertEqual(viewModel.counter, 1)
    }
    
    func testDecrementCount() {
        // Arrange
        let viewModel = CounterViewModel(counter: 1)
        // Act
        viewModel.decrement()
        // Assert
        XCTAssertEqual(viewModel.counter, 0)
    }
    
    func testNotDecrementCountWhenCountIsZero() {
        // Arrange
        let viewModel = CounterViewModel(counter: 0)
        // Act
        viewModel.decrement()
        // Assert
        XCTAssertEqual(viewModel.counter, 0)
    }
    
    func testResetCount() {
        // Arrange
        let viewModel = CounterViewModel(counter: 3)
        // Act
        viewModel.reset()
        // Assert
        XCTAssertEqual(viewModel.counter, 0)
    }
}
