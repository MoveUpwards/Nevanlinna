//
//  DataConvertible+BinaryInteger.swift
//  Gormsson
//
//  Created by Damien Noël Dubuisson on 15/04/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import Foundation

extension BinaryInteger where Self: DataConvertible {
    public func toData() -> Data {
        /// Return Data of the object.
        return withUnsafeBytes(of: self) { Data($0) }
    }
}

extension UInt: DataConvertible { }
extension UInt8: DataConvertible { }
extension UInt16: DataConvertible { }
extension UInt32: DataConvertible { }
extension UInt64: DataConvertible { }

extension Int: DataConvertible { }
extension Int8: DataConvertible { }
extension Int16: DataConvertible { }
extension Int32: DataConvertible { }
extension Int64: DataConvertible { }
