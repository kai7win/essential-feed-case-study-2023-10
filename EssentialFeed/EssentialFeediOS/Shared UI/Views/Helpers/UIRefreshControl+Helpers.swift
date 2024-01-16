//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Kai Chi Tsao on 2024/1/2.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
