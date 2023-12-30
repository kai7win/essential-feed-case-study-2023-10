//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Kai Chi Tsao on 2023/12/30.
//

import UIKit

extension UIButton {
    func simulateTap() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
