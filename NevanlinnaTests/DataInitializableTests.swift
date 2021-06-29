//
//  DataInitializableTests.swift
//  NevanlinnaTests
//
//  Created by Mac on 16/10/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import XCTest
@testable import Nevanlinna

class DataInitializableTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInitWithOctetsInterger() {
        let arrayOne: [UInt8] = [132]
        let arrayTwo: [UInt8] = [132, 75]
        let arrayFour: [UInt8] = [132, 75, 99, 12]

        XCTAssertEqual(UInt8(with: arrayOne), 132)
        XCTAssertEqual(UInt8(with: arrayTwo), 132)
        XCTAssertEqual(UInt8(with: arrayFour), 132)

        XCTAssertEqual(UInt16(with: arrayOne), 132)
        XCTAssertEqual(UInt16(with: arrayTwo), 19332)
        XCTAssertEqual(UInt16(with: arrayFour), 19332)

        XCTAssertEqual(UInt32(with: arrayOne), 132)
        XCTAssertEqual(UInt32(with: arrayTwo), 19332)
        XCTAssertEqual(UInt32(with: arrayFour), 207833988)

        let arrayEight: [UInt8] = [132, 75, 99, 12, 202, 123, 32, 79]

        XCTAssertEqual(UInt64(with: arrayOne), 132)
        XCTAssertEqual(UInt64(with: arrayTwo), 19332)
        XCTAssertEqual(UInt64(with: arrayFour), 207833988)
        XCTAssertEqual(UInt64(with: arrayEight), 5701693235972492164)

        XCTAssertEqual(UInt(with: arrayOne), 132)
        XCTAssertEqual(UInt(with: arrayTwo), 19332)
        XCTAssertEqual(UInt(with: arrayFour), 207833988)
        XCTAssertEqual(UInt(with: arrayEight), 5701693235972492164)
    }

    func testToOctets() {
        let arrayOne: [UInt8] = [132]
        let arrayTwo: [UInt8] = [132, 75]
        let arrayFour: [UInt8] = [132, 75, 99, 12]
        let arrayEight: [UInt8] = [132, 75, 99, 12, 202, 123, 32, 79]

        XCTAssertEqual(UInt8(132).data.octets, arrayOne)
        XCTAssertEqual(UInt16(19332).data.octets, arrayTwo)
        XCTAssertEqual(UInt32(207833988).data.octets, arrayFour)
        XCTAssertEqual(UInt64(5701693235972492164).data.octets, arrayEight)
    }

    func testInitWithOctetsFloatingPoint() {
        let arrayOne: [UInt8] = [132]
        let arrayTwo: [UInt8] = [132, 75]
        let arrayFour: [UInt8] = [132, 75, 99, 12]
        let arrayEight: [UInt8] = [132, 75, 99, 12, 202, 123, 32, 79]

        XCTAssertEqual(Float(with: arrayOne), Float(1.85e-43))
        XCTAssertEqual(Float(with: arrayTwo), Float(2.709e-41))
        XCTAssertEqual(Float(with: arrayFour), Float(1.7510169e-31))
        XCTAssertEqual(Float(with: arrayEight), Float(1.7510169e-31))

        XCTAssertEqual(Double(with: arrayOne), Double(6.5e-322))
        XCTAssertEqual(Double(with: arrayTwo), Double(9.5513e-320))
        XCTAssertEqual(Double(with: arrayFour), Double(1.026836335e-315))
        XCTAssertEqual(Double(with: arrayEight), Double(1.456195752546562e+73))

        #if !os(Windows) && (arch(i386) || arch(x86_64))
        XCTAssertEqual(Float80(with: arrayOne), 0.0) // 6 octets or more
        XCTAssertEqual(Float80(with: arrayTwo), 0.0) // 6 octets or more
        XCTAssertEqual(Float80(with: arrayFour), 0.0) // 6 octets or more
        XCTAssertEqual(Float80(with: arrayEight), -5.463327223678727333e+887)
        #endif
    }

    func testInitWithOctetsString() {
        let arrayNil: [UInt8] = [132]
        let arrayAt: [UInt8] = [64]
        let arrayOk: [UInt8] = [111, 107]
        let arrayHello: [UInt8] = [72, 101, 108, 108, 111]
        let arraySentence: [UInt8] = [65, 32, 118, 101, 114, 121, 32, 108, 111, 110,
                                      103, 32, 115, 101, 110, 116, 101, 110, 99, 101, 33]

        XCTAssertEqual(String(with: arrayNil), nil)
        XCTAssertEqual(String(with: arrayAt), "@")
        XCTAssertEqual(String(with: arrayOk), "ok")
        XCTAssertEqual(String(with: arrayHello), "Hello")
        XCTAssertEqual(String(with: arraySentence), "A very long sentence!")
    }
}
