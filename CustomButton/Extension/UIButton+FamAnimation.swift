//
//  UIButton+FamAnimation.swift
//  CustomButton
//
//  Created by Tung Fam on 1/7/17.
//  Copyright © 2017 Tung Fam. All rights reserved.
//

import UIKit

class UIButton_FamAnimation: UIButton {
    // FAM stands for Fade-out And Magnification
    
    let selectionDuration = 0.2
    var aSelected = false
    
    func setSelected(_ selected: Bool, withAnimation: Bool)  {
        if withAnimation    {
            self.aSelected = selected
            
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
            self.alpha = 0.0
            self.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
        }) { (finished) in
            self.isSelected = self.aSelected
            UIView.animate(withDuration: self.selectionDuration, animations: {
                self.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.alpha = 1.0
            }) { (finished) in
                UIView.animate(withDuration: self.selectionDuration, animations: {
                    self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
                })
            }
        }
        
    }
    
    private func unselectionAnimation() {
        UIView.animate(withDuration: self.selectionDuration, animations: {
            self.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (finished) in
            UIView.animate(withDuration: self.selectionDuration, animations: {
                self.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
                self.alpha = 0.0
            }) { (finished) in
                self.isSelected = self.aSelected
                UIView.animate(withDuration: self.selectionDuration, animations: {
                    self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    self.alpha = 1.0
                })
            }
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
    }
    
}
