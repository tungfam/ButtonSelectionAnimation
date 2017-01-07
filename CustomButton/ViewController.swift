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
        
        // 1. set up selection animation button
        setUpSelectionAnimationButton()
        
        // 2. set up press animation button
        setUpPressAnimationButton()
        
        // 3. set up magnification animation button
        setUpMagnificationAnimationButton()
        
        // 4. set up fam animation button
        setUpFamAnimationButton()
        
    }

    /* 1. Begin: Selection animation related */
    
    func setUpSelectionAnimationButton()    {
        self.selectionAnimationButton.setDefaultImage(withName: "icon_name")
        let selectedColor = UIColor.red
        self.selectionAnimationButton.setSelectedImage(withName: "icon_name", withColor: selectedColor)
    }
    
    @IBAction func selectionAnimationButtonAction(_ sender: UIButton_SelectionAnimation) {
        let isButtonSelected = self.selectionAnimationButton.isSelected
        self.selectionAnimationButton.setSelected(!isButtonSelected, withAnimation: true)
    }
    
    /* 1. End: Selection animation related */
    
    
    
    
    /* 2. Begin: Press animation related */

    func setUpPressAnimationButton()    {
        self.pressAnimationButton.setDefaultImage(withName: "icon_name")
        let selectedColor = UIColor.green
        self.pressAnimationButton.setSelectedImage(withName: "icon_name", withColor: selectedColor)
        
        self.pressAnimationButton.animateOnPress(true)
    }
    
    @IBAction func pressAnimationButtonAction(_ sender: UIButton_PressAnimation) {
        self.pressAnimationButton.isSelected = !self.pressAnimationButton.isSelected
    }
    
    /* 2. End: Press animation related */
    
    
    
    
    /* 3. Begin: Magnification animation related */
    
    func setUpMagnificationAnimationButton()    {
        self.magnificationAnimationButton.setDefaultImage(withName: "icon_name")
        let selectedColor = UIColor.purple
        self.magnificationAnimationButton.setSelectedImage(withName: "icon_name", withColor: selectedColor)
        
        self.magnificationAnimationButton.magnifyOnPress(true)
    }
    
    @IBAction func magnificationAnimationButtonAction(_ sender: UIButton_MagnificationAnimation) {
        self.magnificationAnimationButton.isSelected = !self.magnificationAnimationButton.isSelected
    }
    
    /* 3. End: Magnification animation related */
    
    
    
    
    /* 4. Begin: FAM (Fade-out and magnification) animation related */
    
    func setUpFamAnimationButton()    {
        self.famAnimationButton.setDefaultImage(withName: "icon_name")
        let selectedColor = UIColor.yellow
        self.famAnimationButton.setSelectedImage(withName: "icon_name", withColor: selectedColor)
    }
    
    @IBAction func famAnimationButtonAction(_ sender: UIButton_FamAnimation) {
        let isButtonSelected = self.famAnimationButton.isSelected
        self.famAnimationButton.setSelected(!isButtonSelected, withAnimation: true)
    }
    
    /* 4. End: FAM (Fade-out and magnification) animation related */
}

