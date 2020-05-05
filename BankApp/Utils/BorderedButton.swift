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
    
    var loader = UIActivityIndicatorView(style: .medium)
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = 4
        addShadow(color: .beautifulBlue)
        setupLoader()
    }
    
    private func setupLoader() {
        addSubview(loader)
        loader.frame = bounds
        loader.color = .white
        loader.backgroundColor = .beautifulBlue
        loader.layer.cornerRadius = 4
    }
    
    func startLoading() {
        UIView.animate(withDuration: 0.5) {
            self.loader.alpha = 0
        }
        loader.startAnimating()
    }
    
    func stopLoading() {
        UIView.animate(withDuration: 0.5) {
            self.loader.alpha = 1
        }
        loader.stopAnimating()
    }
}
