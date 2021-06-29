//
//  DataConvertible+Array.swift
//  Nevanlinna
//
//  Created by Loïc GRIFFIE on 26/08/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import Foundation

extension Array: DataConvertible where Element: UnsignedInteger {
    public var data: Data  {
        guard self is [UInt8] else {
            return Data()
        }

        return Data(compactMap({ UInt8($0) }))
    }
}
