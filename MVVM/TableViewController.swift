//
//  TableViewController.swift
//  MVVM
//
//  Created by Андрей Колесников on 29.08.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var viewModel: TableViewData?

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel?.numberOfRows ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        guard let profile = viewModel?.profiles[indexPath.row] else { return TableViewCell()}
        
        cell.nameLabel.text = profile.name
        cell.secondNameLabel.text = profile.secondName
        cell.ageLabel.text = "\(profile.age)"

        return cell
    }
    
}
