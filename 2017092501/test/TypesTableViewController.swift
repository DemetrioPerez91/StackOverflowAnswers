//
//  TypesTableViewController.swift
//  test
//
//  Created by User on 9/27/17.
//  Copyright © 2017 DemetrioPerez. All rights reserved.
//

import UIKit

class DataManager
{
    static let instance = DataManager()
     let possibleTypesDictionary = ["bakery":"Bakery", "bar":"Bar", "cafe":"Cafe", "grocery_or_supermarket":"Supermarket", "restaurant":"Restaurant"]
}


class TypesTableViewController: UITableViewController {

    
    
   
    var selected:[String] = []
    let possibleTypesDictionary = DataManager.instance.possibleTypesDictionary
    
    weak var transferDelegate:TransferProtocol?
    
    var sortedKeys:[String]
    {
        return possibleTypesDictionary.keys.sorted()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ButtonsViewController
        transferDelegate = vc
        vc?.transferData(types: selected)
        
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return possibleTypesDictionary.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath)
        
        cell.textLabel?.text = possibleTypesDictionary[sortedKeys[indexPath.row]]
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selected.append(possibleTypesDictionary[sortedKeys[indexPath.row]]!)
        print(selected)
    }

    
   
}
