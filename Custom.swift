//
//  Custom.swift
//  Albeit Diary
//
//  Created by 阿久沢莉良 on 2020/06/01.
//  Copyright © 2020 Chai Akuzawa. All rights reserved.
//

import UIKit

@IBDsignable class Button_Custom: UIBUtton {
    @IBInspectable var textColor: UIColor?
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet{
            layer.borderWidth = borderWidth
            
        }
    }
    @IBInspectable var borderColor: UIColor = UIColor.clearColor(){
        didSet {
            layer.borderColor = borderColor.CGColor
        }
    }
}

class Custom: UIView {
    
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
