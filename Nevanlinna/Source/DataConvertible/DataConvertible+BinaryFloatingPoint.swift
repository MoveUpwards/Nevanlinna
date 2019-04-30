//
//  DataConvertible+BinaryFloatingPoint.swift
//  Nevanlinna
//
//  Created by Loïc GRIFFIE on 30/04/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import Foundation

extension BinaryFloatingPoint where Self: DataConvertible {
    public func toData() -> Data {
        /// Return Data of the object.
        return withUnsafeBytes(of: self) { Data($0) }
    }
}
