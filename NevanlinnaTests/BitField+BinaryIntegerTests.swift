//
//  BitField+BinaryIntegerTests.swift
//  NevanlinnaTests
//
//  Created by Mac on 16/10/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import XCTest
@testable import Nevanlinna

class BitFieldBinaryIntegerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBoolAtIndex() {
        let one = 1
        XCTAssertEqual(one.bool(at: 0), true, "0b0001 at 0 is true")
        XCTAssertEqual(one.bool(at: 1), false, "0b0001 at 1 is false")

        let two = 2
        XCTAssertEqual(two.bool(at: 0), false, "0b0010 at 0 is false")
        XCTAssertEqual(two.bool(at: 1), true, "0b0010 at 1 is true")

        let eight = 8
        XCTAssertEqual(eight.bool(at: 0), false, "0b1000 at 0 is false")
        XCTAssertEqual(eight.bool(at: 1), false, "0b1000 at 1 is false")
        XCTAssertEqual(eight.bool(at: 2), false, "0b1000 at 2 is false")
        XCTAssertEqual(eight.bool(at: 3), true, "0b1000 at 3 is true")

        let nine = 9
        XCTAssertEqual(nine.bool(at: 0), true, "0b1001 at 0 is true")
        XCTAssertEqual(nine.bool(at: 1), false, "0b1001 at 1 is false")
        XCTAssertEqual(nine.bool(at: 2), false, "0b1001 at 2 is false")
        XCTAssertEqual(nine.bool(at: 3), true, "0b1001 at 3 is true")
    }

    func testValueAtIndex() {
        let one = 1
        XCTAssertEqual(one.value(at: 0, length: 2), 1, "0b0001 at 0 is 0b01")
        XCTAssertEqual(one.value(at: 1, length: 2), 0, "0b0001 at 1 is 0b00")

        let two = 2
        XCTAssertEqual(two.value(at: 0, length: 2), 2, "0b0010 at 0 is 0b10")
        XCTAssertEqual(two.value(at: 1, length: 2), 1, "0b0010 at 1 is 0b01")

        let eight = 8
        XCTAssertEqual(eight.value(at: 0, length: 3), 0, "0b1000 at 0 is 0b000")
        XCTAssertEqual(eight.value(at: 1, length: 3), 4, "0b1000 at 1 is 0b100")
        XCTAssertEqual(eight.value(at: 2, length: 3), 2, "0b1000 at 2 is 0b010")
        XCTAssertEqual(eight.value(at: 3, length: 1), 1, "0b1000 at 3 is 0b1")
    }

}
