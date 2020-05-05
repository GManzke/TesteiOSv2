//
//  UserAccountModel.swift
//  BankApp
//
//  Created by Gabriel Manzke on 29/03/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

struct UserAccountModel: Codable{
    
    var userAccount: UserAccount?
    var error: GenericError?
}

struct UserAccount: Codable{
    
    var userId: Int?
    var name, bankAccount, agency: String?
    var balance: Double?
}

