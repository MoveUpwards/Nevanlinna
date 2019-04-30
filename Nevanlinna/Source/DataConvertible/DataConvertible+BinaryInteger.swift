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
