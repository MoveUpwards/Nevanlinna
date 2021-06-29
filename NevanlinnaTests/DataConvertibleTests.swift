//
//  DataConvertibleTests.swift
//  NevanlinnaTests
//
//  Created by Mac on 16/10/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import XCTest
@testable import Nevanlinna

class DataConvertibleTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testToData() {
        let arrayOne: [UInt8] = [132]
        let arrayTwo: [UInt8] = [132, 75]
        let arrayFour: [UInt8] = [132, 75, 99, 12]
        let arrayEight: [UInt8] = [132, 75, 99, 12, 202, 123, 32, 79]

        XCTAssertEqual(UInt8(132).data, Data(arrayOne))
        XCTAssertEqual(UInt16(19332).data, Data(arrayTwo))
        XCTAssertEqual(UInt32(207833988).data, Data(arrayFour))
        XCTAssertEqual(UInt64(5701693235972492164).data, Data(arrayEight))

        let arrayOneBis: [UInt8] = [132, 0, 0, 0]
        let arrayTwoBis: [UInt8] = [132, 75, 0, 0, 0, 0, 0, 0]

        XCTAssertEqual(Float(1.85e-43).data, Data(arrayOneBis))
        XCTAssertEqual(Double(9.5513e-320).data, Data(arrayTwoBis))
//        XCTAssertEqual(Float80(-5.463327223678727333e+887).data, Data(arrayEight))
    }

    func testToDataString() {
        let arrayNil: [UInt8] = [132]
        let arrayAt: [UInt8] = [64]
        let arrayOk: [UInt8] = [111, 107]
        let arrayHello: [UInt8] = [72, 101, 108, 108, 111]
        let arraySentence: [UInt8] = [65, 32, 118, 101, 114, 121, 32, 108, 111, 110,
                                      103, 32, 115, 101, 110, 116, 101, 110, 99, 101, 33]
        let arrayUnicorn: [UInt8] = [240, 159, 166, 132]

        XCTAssertEqual(String(with: arrayNil)?.data, nil)
        XCTAssertEqual("@".data, Data(arrayAt))
        XCTAssertEqual("ok".data, Data(arrayOk))
        XCTAssertEqual("Hello".data, Data(arrayHello))
        XCTAssertEqual("A very long sentence!".data, Data(arraySentence))
        XCTAssertEqual("🦄".data, Data(arrayUnicorn))
    }

    func testToDataArray() {
        let arrayOne: [UInt8] = [132]
        let arrayTwo: [UInt8] = [132, 75]
        let arrayFour: [UInt8] = [132, 75, 99, 12]
        let arrayEight: [UInt8] = [132, 75, 99, 12, 202, 123, 32, 79]

        XCTAssertEqual(arrayOne.data, Data(arrayOne))
        XCTAssertEqual(arrayTwo.data, Data(arrayTwo))
        XCTAssertEqual(arrayFour.data, Data(arrayFour))
        XCTAssertEqual(arrayEight.data, Data(arrayEight))

        let arrayNotImplemented: [UInt16] = [132, 75]

        XCTAssertEqual(arrayNotImplemented.data, Data())
    }

}
