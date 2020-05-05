//
//  GenericError.swift
//  BankApp
//
//  Created by Gabriel Manzke on 05/05/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

struct GenericError: Codable {
    
    var statusCode: Int?
    var message: String?
}
