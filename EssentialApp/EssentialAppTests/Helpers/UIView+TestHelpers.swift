//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Kai Chi Tsao on 2024/1/14.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
