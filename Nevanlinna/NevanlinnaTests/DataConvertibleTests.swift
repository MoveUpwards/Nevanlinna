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

        XCTAssertEqual(UInt8(132).toData(), Data(arrayOne))
        XCTAssertEqual(UInt16(19332).toData(), Data(arrayTwo))
        XCTAssertEqual(UInt32(207833988).toData(), Data(arrayFour))
        XCTAssertEqual(UInt64(5701693235972492164).toData(), Data(arrayEight))

        let arrayOneBis: [UInt8] = [132, 0, 0, 0]
        let arrayTwoBis: [UInt8] = [132, 75, 0, 0, 0, 0, 0, 0]

        XCTAssertEqual(Float(1.85e-43).toData(), Data(arrayOneBis))
        XCTAssertEqual(Double(9.5513e-320).toData(), Data(arrayTwoBis))
//        XCTAssertEqual(Float80(-5.463327223678727333e+887).toData(), Data(arrayEight))
    }

    func testToDataString() {
        let arrayNil: [UInt8] = [132]
        let arrayAt: [UInt8] = [64]
        let arrayOk: [UInt8] = [111, 107]
        let arrayHello: [UInt8] = [72, 101, 108, 108, 111]
        let arraySentence: [UInt8] = [65, 32, 118, 101, 114, 121, 32, 108, 111, 110,
                                      103, 32, 115, 101, 110, 116, 101, 110, 99, 101, 33]
        let arrayUnicorn: [UInt8] = [240, 159, 166, 132]

        XCTAssertEqual(String(with: arrayNil)?.toData(), nil)
        XCTAssertEqual("@".toData(), Data(arrayAt))
        XCTAssertEqual("ok".toData(), Data(arrayOk))
        XCTAssertEqual("Hello".toData(), Data(arrayHello))
        XCTAssertEqual("A very long sentence!".toData(), Data(arraySentence))
        XCTAssertEqual("🦄".toData(), Data(arrayUnicorn))
    }

    func testToDataArray() {
        let arrayOne: [UInt8] = [132]
        let arrayTwo: [UInt8] = [132, 75]
        let arrayFour: [UInt8] = [132, 75, 99, 12]
        let arrayEight: [UInt8] = [132, 75, 99, 12, 202, 123, 32, 79]

        XCTAssertEqual(arrayOne.toData(), Data(arrayOne))
        XCTAssertEqual(arrayTwo.toData(), Data(arrayTwo))
        XCTAssertEqual(arrayFour.toData(), Data(arrayFour))
        XCTAssertEqual(arrayEight.toData(), Data(arrayEight))

        let arrayNotImplemented: [UInt16] = [132, 75]

        XCTAssertEqual(arrayNotImplemented.toData(), Data())
    }

}
