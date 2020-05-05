//
//  DoubleExtensions.swift
//  BankApp
//
//  Created by Gabriel Manzke on 05/05/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

extension Double {
    
    func formatCurrency() -> String {
        return String(format: "R$%.02f", self).replacingOccurrences(of: ".", with: ",")
    }
}
