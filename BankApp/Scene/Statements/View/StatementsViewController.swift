//
//  StatementsViewController.swift
//  BankApp
//
//  Created by Gabriel Manzke on 04/04/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import UIKit

protocol StatementsViewControllerProtocol {
    func showData(data: [StatementList])
}

class StatementsViewController: UIViewController {
    
    
    var tableView = UITableView()
    var userAccount: UserAccount?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupTableViewLayout()
    }
    
    private func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "HeaderTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "HeaderTableViewCell")
        tableView.register(UINib(nibName: "StatementsTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "StatementsTableViewCell")
    }
    
    private func setupTableViewLayout() {
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
    }
}

