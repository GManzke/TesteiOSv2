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
    
    var interactor: LoginInteractorProtocol?
    
    // MARK: - LifeCycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextField()
    }
    
    @IBAction func didTapLoginButton(_ sender: Any) {
        textFieldValidate()
    }
}

extension LoginViewController {
    
    // MARK: - Private methods
    
    private func setup() {
        let controller = self
        let interactor = LoginInteractor()
        controller.interactor = interactor
    }
    
    private func setupTextField() {
        userTextField.mask = "###.###.###-##"
        userTextField.delegate = self
        passwordTextField.isSecureTextEntry = true
        
    }
    
    private func textFieldValidate() {
        
        do {
            let user = try userTextField.validateTextField(type: .user)
            let password = try passwordTextField.validateTextField(type: .password)
            interactor?.getData(model: LoginModel(user: user, password: password))
            
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
