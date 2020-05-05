//
//  StatementsModel.swift
//  BankApp
//
//  Created by Gabriel Manzke on 14/04/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

struct StatementsModel: Codable {
    let statementList: [StatementList]?
    let error: GenericError?
}

struct StatementList: Codable {
    let title, desc, date: String?
    let value: Double?
}
