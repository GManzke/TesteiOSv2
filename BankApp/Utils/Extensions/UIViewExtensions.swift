//
//  UIViewExtensions.swift
//  BankApp
//
//  Created by Gabriel Manzke on 08/04/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func addShadow(color: UIColor){
        
        layer.shadowColor = color.cgColor
        layer.shadowOffset.height = 2
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.3
        layer.masksToBounds = false
    }
}
