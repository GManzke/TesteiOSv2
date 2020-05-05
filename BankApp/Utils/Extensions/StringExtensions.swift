//
//  StringExtensions.swift
//  BankApp
//
//  Created by Gabriel Manzke on 05/05/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

extension String {
    
    func formatDate()  -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd"
        
        if let date = dateFormatter.date(from: self) {
            dateFormatter.dateFormat = "dd-MM-YYYY"
            return dateFormatter.string(from: date)
        }
        
        return ""
    }
}
