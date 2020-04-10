//
//  BankAppAPI.swift
//  BankApp
//
//  Created by Gabriel Manzke on 29/03/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation
import Alamofire

protocol BaseRequest {
    var url: String {get}
    var parameters: Parameters {get}
    var method: HTTPMethod {get}
}

protocol BankAppAPIProtocol{
    func requestLoginService<T:Codable>(data: BaseRequest, callback: @escaping (T) -> Void)
}

class BankAppAPI: BankAppAPIProtocol{

     func requestLoginService<T:Codable>(data: BaseRequest, callback: @escaping (T) -> Void) {
        
        guard let url = URL(string: data.url) else {return}
        let params: Parameters = data.parameters
        
        AF.request(url, method: data.method, parameters: params).responseJSON { response in
            
            switch response.result {
            case .success:
                if let data = response.data {
                    do {
                        let jsonData = try JSONDecoder().decode(T.self, from: data)
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
