//
//  addTableViewController.swift
//  to do app
//
//  Created by deepo on 4/5/20.
//  Copyright © 2020 deepo. All rights reserved.
//

/*import UIKit

class addTableViewController: UITableViewController {

    @IBOutlet weak var cancelbar: UIBarButtonItem!
    @IBOutlet weak var addbar: UIBarButtonItem!
    @IBAction func cancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func add(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
    }
    
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func viewWillAppear(_ animated: Bool) {
        textfield.becomeFirstResponder()
    }
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?
    {
        return nil
    }
    

}
extension addTableViewController:UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textfield.resignFirstResponder()
        return false
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let oldtext = textfield.text,
        let stringrange = Range(range, in: oldtext) else
        {
            return false
        }
    
    let newtext = oldtext.replacingCharacters(in: stringrange, with: string)
        if newtext.isEmpty
        {
            
            addbar.isEnabled = false
        }
        else
        {
            addbar.isEnabled = true
        }
        return true
}

}
 */

