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
        addShadow(color: .beautifulBlue)
    }
}
