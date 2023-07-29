//
//  ArrayTests.swift
//  MovieQuizTests
//
//  Created by Роман Ивановский on 27.07.2023.
//

import XCTest
@testable import MovieQuiz

class ArrayTests: XCTestCase {
    func testGetValueInRange() throws {
        // GIVEN
        let array = [1,1,2,3,5]
        // WHEN
        let value = array[safe: 2]
        // THEN
        XCTAssertNotNil(value)
        XCTAssertEqual(value, 2)
    }
    
    func testGetValueOutOfRange() throws {
        // GIVEN
        let array = [1,1,2,3,5]
        // WHEN
        let value = array[safe: 20]
        // THEN
        XCTAssertNil(value)
    }
}
