//
//  DataConvertible+String.swift
//  Nevanlinna
//
//  Created by Loïc GRIFFIE on 30/04/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import Foundation

extension String: DataConvertible {
    /// Return Data of the object.
    public var data: Data { Data(utf8) }
}
