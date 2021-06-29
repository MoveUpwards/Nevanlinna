//
//  Empty.swift
//  Nevanlinna
//
//  Created by Loïc GRIFFIE on 27/05/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import Foundation

/// A type representing an empty response
public struct Empty: DataInitializable, DataConvertible {
    /// Initialize an empty object
    public init() { }

    /// Initialize the object from octets' array.
    public init?(with octets: [UInt8]) { }

    /// Return Data of the object.
    public var data: Data { Data() }
}
