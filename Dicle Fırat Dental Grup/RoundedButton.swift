//
//  RoundedButton.swift
//  Dicle Fırat Dental Grup
//
//  Created by Demo on 25.02.2019.
//  Copyright © 2019 Demo. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class RoundedButton: UIButton {
    
    
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
        
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    
    
    func setupView() {
        
        self.layer.cornerRadius = cornerRadius
        
    }
    
    
}

