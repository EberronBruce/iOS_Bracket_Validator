//
//  BracketValidatorTests.swift
//  BracketValidatorTests
//
//  Created by Bruce Burgess on 7/11/22.
//

import XCTest
@testable import BracketValidator

class BracketValidatorTests: XCTestCase {

    
    func testStack() {
        var stack = Stack<Int>()
        XCTAssertTrue(stack.isEmpty)
        stack.push(1)
        stack.push(2)
        XCTAssertEqual(stack.peek(), 2)
        XCTAssertEqual(stack.pop(), 2)
        XCTAssertEqual(stack.peek(), 1)
        XCTAssertEqual(stack.pop(), 1)
        XCTAssertNil(stack.pop())
    }

    
    func testBracketTrue() {
        var string = "[(Bob) + 5]"
        XCTAssertTrue(validateBracketsFrom(string))
        string = "[{} test ({})]"
        XCTAssertTrue(validateBracketsFrom(string))
        string = "[(5+2)*3]"
        XCTAssertTrue(validateBracketsFrom(string))
    }
    
    func testBracketFalse() {
        var string = "[(Bob + 5]"
        XCTAssertFalse(validateBracketsFrom(string))
        string = "[} test ({})]"
        XCTAssertFalse(validateBracketsFrom(string))
        string = "(5+2)*3]"
    }
}
