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
            self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        })
    }
    
    @objc private func unmagnifyAnimation()   {
        UIView.animate(withDuration: self.magnificationDuration, animations: {
            self.transform = CGAffineTransform(scaleX: 1, y: 1)
        })
    }

}
