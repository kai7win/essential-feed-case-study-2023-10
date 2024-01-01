//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Kai Chi Tsao on 2024/1/1.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
