//
//  UIButton+MagnificationAnimation.swift
//  CustomButton
//
//  Created by Tung Fam on 1/7/17.
//  Copyright © 2017 Tung Fam. All rights reserved.
//

import UIKit

class UIButton_MagnificationAnimation: UIButton {

    let magnificationDuration = 0.1
    
    func magnifyOnPress(_ animate: Bool)   {
        if animate  {
            self.addTarget(self, action: #selector(self.magnifyAnimation), for: .touchDown)
            self.addTarget(self, action: #selector(self.unmagnifyAnimation), for: .touchUpInside)
        }
    }
    
    @objc private func magnifyAnimation()   {
        UIView.animate(withDuration: self.magnificationDuration, animations: {
            self.transform = CGAffineTransform(scaleX: 1.15, y: 1.15)
        })
    }
    
    @objc private func unmagnifyAnimation()   {
        UIView.animate(withDuration: self.magnificationDuration, animations: {
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
