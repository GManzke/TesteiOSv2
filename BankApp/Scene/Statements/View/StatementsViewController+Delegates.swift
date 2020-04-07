//
//  StatementsViewController+Delegates.swift
//  BankApp
//
//  Created by Gabriel Manzke on 07/04/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation
import UIKit

extension StatementsViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 1
        case 1: return 0
        default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderTableViewCell", for: indexPath) as! HeaderTableViewCell
            
            cell.delegate = self
            cell.setupWith(name: userAccount?.name,
                           agency: userAccount?.agency,
                           account: userAccount?.bankAccount,
                           balance: userAccount?.balance)
            
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "StatementsTableViewCell", for: indexPath)
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    
}

extension StatementsViewController: UITableViewDelegate{}

extension StatementsViewController: HeaderTableViewCellDelegate {
    
    func logoutAction() {
        navigationController?.popViewController(animated: true)
    }
}

