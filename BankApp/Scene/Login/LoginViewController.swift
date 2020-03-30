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
    
    
    @IBOutlet weak var loginButton: BorderedButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BankAppAPI.requestLoginService(data: LoginModel(user: "test_user", password: "Teste@1")) { response in
            print(response.userAccount?.name)
        }
        
        // Do any additional setup after loading the view.
        
    
    }
    
    @IBAction func didTapLoginButton(_ sender: Any) {
        
    }
    


}
