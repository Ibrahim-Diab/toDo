//
//  ViewController.swift
//  to do app
//
//  Created by deepo on 4/4/20.
//  Copyright © 2020 deepo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var check = [String]()


    @IBOutlet weak var table: UITableView!
    @IBAction func addd(_ sender: Any) {
        let alert = UIAlertController(title: "add check", message: nil, preferredStyle: .alert)
        alert.addTextField { (checkTF) in
            checkTF.placeholder = "enter a name"
            
            
        }
        let action = UIAlertAction(title: "Add",style:.default){ (_) in
            guard let one = alert.textFields?.first?.text else {return }
            let newrow = 0
            self.check.append(one + "👻")
            let indexpath = IndexPath(row: newrow-1, section: 0)
            self.table.insertRows(at: [indexpath], with: .automatic)
            
            
        }
        alert.addAction(action)
        present(alert,animated: true)
        
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return check.count
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = check[indexPath.row]
        configcheckmark(for: cell, at: indexPath)
        return cell


    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at:indexPath)
        {
            
        configcheckmark(for: cell, at:indexPath)
     tableView.deselectRow(at: indexPath, animated: true)
    
        }
   }
    
    func configcheckmark(for cell :UITableViewCell , at indexpath :IndexPath)
    {
        
            if cell.accessoryType == .none
            {
                cell.accessoryType = .checkmark
            }
            else
            {
                cell.accessoryType = .none
            }
    }
}

