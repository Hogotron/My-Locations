//
//  Functions.swift
//  MyLocations
//
//  Created by Tomas Sidenfaden on 4/26/17.
//  Copyright © 2017 Tomas Sidenfaden. All rights reserved.
//

import Foundation
import Dispatch

func afterDelay(_ seconds: Double, closure: @escaping () -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: closure)
}
