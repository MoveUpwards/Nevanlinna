//
//  EmptyTests.swift
//  NevanlinnaTests
//
//  Created by Mac on 16/10/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import XCTest
@testable import Nevanlinna

class EmptyTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testEmpty() {
        let emtpy = Empty()
        guard let fakeEmpty = Empty(with: [12, 32]) else {
            XCTFail("init?(with octets: [UInt8]) fail")
            return
        }

        XCTAssertEqual(emtpy.data, fakeEmpty.data)
        XCTAssertEqual(emtpy.data, Data())
    }
}
