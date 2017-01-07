//
//  ViewController.swift
//  CustomButton
//
//  Created by Tung Fam on 1/6/17.
//  Copyright © 2017 Tung Fam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var selectionAnimationButton: UIButton_SelectionAnimation!
    @IBOutlet weak var pressAnimationButton: UIButton_PressAnimation!
    @IBOutlet weak var magnificationAnimationButton: UIButton_MagnificationAnimation!
    @IBOutlet weak var famAnimationButton: UIButton_FamAnimation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set up selection animation button
        setUpSelectionAnimationButton()
        
        // set up press animation button
        setUpPressAnimationButton()
        
        // set up magnification animation button
        setUpMagnificationAnimationButton()
        
        // set up fam animation button
        setUpFamAnimationButton()
        
    }

    /* 1. Begin: Selection animation related */
    
    func setUpSelectionAnimationButton()    {
        if let image = UIImage(named: "stop") {
            self.selectionAnimationButton.setImage(image, for: .normal)
        }
        
        if let image = UIImage(named: "stop")?.withRenderingMode(.alwaysTemplate)  {
            self.selectionAnimationButton.setImage(image, for: .selected)
            self.selectionAnimationButton.tintColor = UIColor.red
        }
        
        if let image = UIImage(named: "stop")?.withRenderingMode(.alwaysTemplate)  {
            self.selectionAnimationButton.setImage(image, for: .highlighted)
            self.selectionAnimationButton.tintColor = UIColor.red
        }
    }
    
    @IBAction func selectionAnimationButtonAction(_ sender: UIButton_SelectionAnimation) {
        let isButtonSelected = self.selectionAnimationButton.isSelected
        self.selectionAnimationButton.setSelected(!isButtonSelected, withAnimation: true)
    }
    
    /* 1. End: Selection animation related */
    
    
    
    
    /* 2. Begin: Press animation related */

    func setUpPressAnimationButton()    {
        if let image = UIImage(named: "stop") {
            self.pressAnimationButton.setImage(image, for: .normal)
        }
        
        if let image = UIImage(named: "stop")?.withRenderingMode(.alwaysTemplate)  {
            self.pressAnimationButton.setImage(image, for: .selected)
            self.pressAnimationButton.tintColor = UIColor.green
        }
        
        if let image = UIImage(named: "stop")?.withRenderingMode(.alwaysTemplate)  {
            self.pressAnimationButton.setImage(image, for: .highlighted)
            self.pressAnimationButton.tintColor = UIColor.green
        }
        
        self.pressAnimationButton.animateOnPress(true)
    }
    
    @IBAction func pressAnimationButtonAction(_ sender: UIButton_PressAnimation) {
        self.pressAnimationButton.isSelected = !self.pressAnimationButton.isSelected
    }
    
    /* 2. End: Press animation related */
    
    
    
    
    /* 3. Begin: Magnification animation related */
    
    func setUpMagnificationAnimationButton()    {
        if let image = UIImage(named: "stop") {
            self.magnificationAnimationButton.setImage(image, for: .normal)
        }
        
        if let image = UIImage(named: "stop")?.withRenderingMode(.alwaysTemplate)  {
            self.magnificationAnimationButton.setImage(image, for: .selected)
            self.magnificationAnimationButton.tintColor = UIColor.purple
        }
        
        if let image = UIImage(named: "stop")?.withRenderingMode(.alwaysTemplate)  {
            self.magnificationAnimationButton.setImage(image, for: .highlighted)
            self.magnificationAnimationButton.tintColor = UIColor.purple
        }
        
        self.magnificationAnimationButton.magnifyOnPress(true)
    }
    
    @IBAction func magnificationAnimationButtonAction(_ sender: UIButton_MagnificationAnimation) {
        self.magnificationAnimationButton.isSelected = !self.magnificationAnimationButton.isSelected
    }
    
    /* 3. End: Magnification animation related */
    
    
    
    
    /* 4. Begin: FAM (Fade-out and magnification) animation related */
    
    func setUpFamAnimationButton()    {
        if let image = UIImage(named: "stop") {
            self.famAnimationButton.setImage(image, for: .normal)
        }
        
        if let image = UIImage(named: "stop")?.withRenderingMode(.alwaysTemplate)  {
            self.famAnimationButton.setImage(image, for: .selected)
            self.famAnimationButton.tintColor = UIColor.yellow
        }
    }
    
    @IBAction func famAnimationButtonAction(_ sender: UIButton_FamAnimation) {
        let isButtonSelected = self.famAnimationButton.isSelected
        self.famAnimationButton.setSelected(!isButtonSelected, withAnimation: true)
    }
    
    /* 4. End: FAM (Fade-out and magnification) animation related */
}

