//
//  PlacesViewController.swift
//  FourSquareClone
//
//  Created by Noyan Çepikkurt on 25.09.2022.
//

import UIKit
import Parse

class PlacesViewController: UIViewController {
   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "LogOut", style: UIBarButtonItem.Style.plain, target: self, action: #selector(logOutClicked))
    }
    
    @objc func addButtonClicked() {
        
        performSegue(withIdentifier: "toAddPlacesVC", sender: nil)
        
    }
    
    @objc func logOutClicked() {
        
        PFUser.logOutInBackground { (error) in
            if error != nil {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true)
            } else {
                self.performSegue(withIdentifier: "toVC", sender: nil)
                
            }
        }
        
    }
    
    
}
