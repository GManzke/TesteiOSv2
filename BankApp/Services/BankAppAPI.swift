//
//  BankAppAPI.swift
//  BankApp
//
//  Created by Gabriel Manzke on 29/03/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation
import Alamofire

protocol BankAppAPIProtocol{
    static func requestLoginService(data: LoginModel, callback: @escaping (UserAccountModel) -> Void)
}

class BankAppAPI: BankAppAPIProtocol{
    static func requestLoginService(data: LoginModel, callback: @escaping (UserAccountModel) -> Void) {
        let url = "https://bank-app-test.herokuapp.com/api/login"
        let params: Parameters = ["user": data.user,
                                  "password": data.password]
        
        AF.request(url, method: .post, parameters: params).responseJSON { response in
            switch response.result {
            case .success:
                if let data = response.data {
                    do {
                        let jsonData = try JSONDecoder().decode(UserAccountModel.self, from: data)
                        print(jsonData)
                        callback(jsonData)
                    } catch {
                        print("Erro")
                    }
                }
            case .failure: break // TODO: Tratativa de erro
            }
        }
    }
}
