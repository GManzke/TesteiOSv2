//
//  BorderedButton.swift
//  BankApp
//
//  Created by Gabriel Manzke on 28/03/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class BorderedButton: UIButton{
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = 4
        layer.shadowColor = UIColor.beautifulBlue.cgColor
        layer.shadowOffset.height = 2
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.3
        layer.masksToBounds = false
    }
}
