//
//  LabViewController.swift
//  Examples
//
//  Created by ibrahim AKPINAR on 11.03.2023.
//

import UIKit

struct Lab {
    let name: String
    let viewController: UIViewController
}

final class LabViewController: UITableViewController {
    
    private var navBarTitle: String?
    private var labs: [Lab]
    private let cellId = "cellId"
    
    
    init(labs: [Lab], navBarTitle: String) {
        self.navBarTitle = navBarTitle
        self.labs = labs
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
}

// MARK: - Private functions

private extension LabViewController {
    
    func setupViews() {
        navigationItem.title = navBarTitle
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
}

// MARK: - Table View extensions

extension LabViewController {
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        cell.textLabel?.text = labs[indexPath.row].name
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        labs.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(labs[indexPath.row].viewController, animated: false)
    }
}
