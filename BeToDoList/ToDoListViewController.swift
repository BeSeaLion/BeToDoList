//
//  ViewController.swift
//  BeToDoList
//
//  Created by Josef Divín on 11/05/2019.
//  Copyright © 2019 Josef Divín. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    @IBOutlet var tableViewcontroler: UITableView!
    let itemArray = ["Find milk", "Buy Eggos", "Destroy demogorgon"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    //MARK: - TableView DataSource Methods
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }


}

