//
//  LoginRouter.swift
//  BankApp
//
//  Created by Gabriel Manzke on 03/04/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation
import UIKit	

class LoginRouter {
    static func navigateToStatements (controller: UIViewController, data: UserAccount?) {
        let statementsView = StatementsViewController()
        statementsView.userAccount = data
        controller.navigationController?.pushViewController(statementsView, animated: true)
    }
}
