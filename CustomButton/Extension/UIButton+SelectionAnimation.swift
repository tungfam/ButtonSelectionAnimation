//
//  UIButton+SelectionAnimation.swift
//  CustomButton
//
//  Created by Tung Fam on 1/6/17.
//  Copyright © 2017 Tung Fam. All rights reserved.
//

import UIKit

class UIButton_SelectionAnimation: UIButton {
    
    let selectionDuration = 0.2
    
    func setSelected(_ selected: Bool, withAnimation: Bool)  {
        if withAnimation    {
            self.isSelected = selected
            
            if selected  {
                selectionAnimation()
            } else  {
                unselectionAnimation()
            }
        } else  {
            /* usual selection without animation */
            self.isSelected = selected
        }
        
    }
    
    private func selectionAnimation()   {
        UIView.animate(withDuration: self.selectionDuration, animations: {
            self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }) { (finished) in
            UIView.animate(withDuration: self.selectionDuration, animations: {
                self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            })
        }
    }
    
    private func unselectionAnimation() {
        UIView.animate(withDuration: self.selectionDuration, animations: {
            self.transform = CGAffineTransform(scaleX: 1.4, y: 1.4)
        }) { (finished) in
            UIView.animate(withDuration: self.selectionDuration, animations: {
                self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            })
        }
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
