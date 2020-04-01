//
//  LoginViewController.swift
//  BankApp
//
//  Created by Gabriel Manzke on 28/03/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//]

import UIKit

class LoginViewController: UIViewController {
    
    	
    // MARK: - Outlets
    
    
    @IBOutlet weak var userTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    @IBOutlet weak var loginButton: BorderedButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextField()
        
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func didTapLoginButton(_ sender: Any) {
        textFieldValidate()
        
        
    }
}

//MARK: - Private methods

extension LoginViewController{
    
    private func setupTextField(){
        userTextField.mask = "###.###.###-##"
        userTextField.delegate = self
        passwordTextField.isSecureTextEntry = true
        
    }
    
    private func textFieldValidate(){
        
        do {
            let user = try userTextField.validateTextField(type: .user)
            let password = try passwordTextField.validateTextField(type: .password)
            print("\(user) \(password)")
            
        } catch let validatorError as ValidatorError {
            let alert = UIAlertController(title: "Ops...", message: validatorError.message, preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        } catch {
            print(error)
        }
        
    }
}

extension LoginViewController: UITextFieldDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return userTextField.shouldChangeCharacters(in: range, replacementString: string)
    }
}
