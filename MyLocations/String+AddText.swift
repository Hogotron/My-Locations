//
//  String+AddText.swift
//  MyLocations
//
//  Created by Tomas Sidenfaden on 5/8/17.
//  Copyright © 2017 Tomas Sidenfaden. All rights reserved.
//

extension String {
    mutating func add(text: String?, separatedBy separator: String = "") {
        if let text = text {
            if !isEmpty {
                self += separator
            }
            self += text
        }
    }
}
