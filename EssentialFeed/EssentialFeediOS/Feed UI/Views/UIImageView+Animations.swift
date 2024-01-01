//
//  UIImageView+Animations.swift
//  EssentialFeediOS
//
//  Created by Kai Chi Tsao on 2024/1/1.
//

import UIKit

extension UIImageView {
    func setImageAnimated(_ newImage: UIImage?) {
        image = newImage
        
        guard newImage != nil else { return }
        
        alpha = 0
        UIView.animate(withDuration: 0.25) {
            self.alpha = 1
        }
    }
}
