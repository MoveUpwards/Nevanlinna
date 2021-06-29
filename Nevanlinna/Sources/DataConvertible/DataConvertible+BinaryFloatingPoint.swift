//
//  DataConvertible+BinaryFloatingPoint.swift
//  Nevanlinna
//
//  Created by Loïc GRIFFIE on 30/04/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import Foundation

extension BinaryFloatingPoint where Self: DataConvertible {
    /// Return Data of the object.
    public var data: Data { withUnsafeBytes(of: self) { Data($0) } }
}

extension Float: DataConvertible { }
extension Double: DataConvertible { }
