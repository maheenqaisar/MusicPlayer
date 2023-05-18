//
//  CornerRadius.swift
//  MusicPlayer
//
//  Created by Maheen on 17/05/2023.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return self.cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}

//Image Extension

extension UIImageView {
    
    func roundedImage() {
        self.layer.cornerRadius = self.frame.size.width / 2.6
        self.clipsToBounds = true
    }
    
}
