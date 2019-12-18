//
//  MainTableViewController.swift
//  tableviewcell-constraints
//
//  Created by user on 12/17/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(AwesomeTableViewCell.self, forCellReuseIdentifier: "reuseId")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuseId") as? AwesomeTableViewCell else { return UITableViewCell() }
        
        NSLayoutConstraint.activate([
            cell.mainLabel.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 20),
        cell.mainLabel.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: -20),
        cell.mainLabel.topAnchor.constraint(equalTo: cell.contentView.topAnchor, constant: 5),
        cell.mainLabel.bottomAnchor.constraint(equalTo: cell.contentView.bottomAnchor, constant: -5),
            
        cell.contentView.leadingAnchor.constraint(equalTo: cell.leadingAnchor, constant: 20),
        cell.contentView.trailingAnchor.constraint(equalTo: cell.trailingAnchor, constant: -20),
        cell.contentView.topAnchor.constraint(equalToSystemSpacingBelow: cell.topAnchor, multiplier: 0),
        cell.contentView.bottomAnchor.constraint(equalTo: cell.bottomAnchor, constant: 0)
        ])
        //cell.textLabel?.text = "\(indexPath.row)"
        //cell.backgroundColor = indexPath.row % 2 == 0 ? .red : .green
        // Configure the cell...

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
