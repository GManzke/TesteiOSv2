//
//  Validator.swift
//  BankApp
//
//  Created by Gabriel Manzke on 30/03/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

struct ValidatorError: Error {
    var message: String
    init(_ message: String) {
        self.message = message
    }
}

enum ValidatorType {
    case user
    case password
}

protocol ValidatorProtocol {
    func validateString(value: String) throws -> String
    
}

struct Validator {
    static func textFieldValidateType(type: ValidatorType) -> ValidatorProtocol {
        switch type {
        case .user:
            return UserValidator()
        case .password:
            return PasswordValidator()
        }
    }
}


class UserValidator: ValidatorProtocol {
    func validateString(value: String) throws -> String {
        guard value.count >= 14 else {throw ValidatorError("Usuário inválido")}
        return value
    }
    
        
}

class PasswordValidator: ValidatorProtocol {
    func validateString(value: String) throws -> String {
        return value
    }
    	
    
}
