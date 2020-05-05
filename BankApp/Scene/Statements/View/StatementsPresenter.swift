//
//  StatementsPresenter.swift
//  BankApp
//
//  Created by Gabriel Manzke on 14/04/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

protocol StatementsPresenterProtocol {
    func presentStatements(data: [StatementList]?)
}

class StatementsPresenter: StatementsPresenterProtocol {

    var viewController: StatementsViewControllerProtocol?
    
    func presentStatements(data: [StatementList]?) {
        guard let data = data else {return}
        viewController?.showData(data: data)
    }
    
    
}
