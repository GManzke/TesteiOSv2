//
//  StatementsTableViewCell.swift
//  BankApp
//
//  Created by Gabriel Manzke on 05/04/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import UIKit

class StatementsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var backgroundCardView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundCardView?.addShadow(color: .ultraLightGrey)
        backgroundCardView.layer.cornerRadius = 4
    }
    
    func setupWith(title: String?, desc: String?, date: String?, value: Double?){
        titleLabel.text = title
        descLabel.text = desc
        dateLabel.text = date?.formatDate()
        valueLabel.text = value?.formatCurrency()
    }
}
