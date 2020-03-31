//
//  CustomTextField.swift
//  BankApp
//
//  Created by Gabriel Manzke on 30/03/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation
import UIKit

class CustomTextField: UITextField {
    
    func validateTextField(type: ValidatorType) throws -> String{
        let validator = Validator.textFieldValidateType(type: type)
        
        guard let value = self.text else {return ""}
        
        if value.isEmpty {
            shakeTextField()
            throw ValidatorError("O campo não pode ser vazio")
        }
        
        do {
            let result = try validator.validateString(value: value)
            return result
            
        } catch {
            shakeTextField()
            throw error
            
        }
    }
    
    func shakeTextField(){
        transform = CGAffineTransform(translationX: 15, y: 0)
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 100, options: .curveEaseInOut, animations: {
            self.transform = .identity
        }, completion: nil)
    }
}
