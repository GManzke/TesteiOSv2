//
//  HeaderTableViewCell.swift
//  BankApp
//
//  Created by Gabriel Manzke on 05/04/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import UIKit

protocol HeaderTableViewCellDelegate: class {
    func logoutAction()
}

class HeaderTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var agencyAndAccountLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    
    // MARK: Properties
    weak var delegate: HeaderTableViewCellDelegate?
    
    func setupWith(name: String?, agency: String?, account: String?, balance: Double?) {
        
        guard let accountValue = account else {return}
        guard let agencyValue = agency else {return}
        guard let balanceValue = balance else {return}
        
        nameLabel.text = name
        agencyAndAccountLabel.text = "\(accountValue) / \(agencyValue)"
        balanceLabel.text = String(format: "R$%.02f", balanceValue).replacingOccurrences(of: ".", with: ",")
        
        
    }
    // MARK: Actions
    
    @IBAction func didTapLogoutButton(_ sender: Any) {
        delegate?.logoutAction()
    }
}
