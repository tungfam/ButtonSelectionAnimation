//
//  UIButton+PressAnimation.swift
//  CustomButton
//
//  Created by Tung Fam on 1/7/17.
//  Copyright © 2017 Tung Fam. All rights reserved.
//

import UIKit

class UIButton_PressAnimation: UIButton {
    
    let pressDuration = 0.1
    
    func animateOnPress(_ animate: Bool)   {
        if animate  {
            self.addTarget(self, action: #selector(self.pressAnimation), for: .touchDown)
            self.addTarget(self, action: #selector(self.unpressAnimation), for: .touchUpInside)
        }
    }
    
    @objc private func pressAnimation()   {
        UIView.animate(withDuration: self.pressDuration, animations: {
            self.transform = CGAffineTransform(scaleX: 0.85, y: 0.85)
        })
    }
    
    @objc private func unpressAnimation()   {
        UIView.animate(withDuration: self.pressDuration, animations: {
            self.transform = CGAffineTransform(scaleX: 1, y: 1)
        })
    }
    
    func setDefaultImage(withName imageName: String)  {
        if let image = UIImage(named: imageName) {
            self.setImage(image, for: .normal)
        }
    }
    
    func setSelectedImage(withName imageName: String, withColor color: UIColor) {
        if let image = UIImage(named: imageName)?.withRenderingMode(.alwaysTemplate)  {
            self.setImage(image, for: .selected)
            self.tintColor = color
        }
        
        if let image = UIImage(named: imageName)?.withRenderingMode(.alwaysTemplate)  {
            self.setImage(image, for: .highlighted)
            self.tintColor = color
        }
    }

}
