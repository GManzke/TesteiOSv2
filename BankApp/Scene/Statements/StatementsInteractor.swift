//
//  StatementsInteractor.swift
//  BankApp
//
//  Created by Gabriel Manzke on 08/04/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

protocol StatementsInteractorProtocol{
    func getStatements (userId: Int?)
}


class StatementsInteractor: StatementsInteractorProtocol {
    
    var service: BankAppAPIProtocol = BankAppAPI?
    
    func getStatements(userId: Int?) {
        guard let id = userId else {return}
        
        let request = StatementsRequest(userId: id)
        service.requestLoginService(data: request) { (response: StatementsModel) in
            <#code#>
        }
        
    }
}
