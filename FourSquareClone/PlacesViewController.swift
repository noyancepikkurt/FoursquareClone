//
//  PlacesViewController.swift
//  FourSquareClone
//
//  Created by Noyan Çepikkurt on 25.09.2022.
//

import UIKit

class PlacesViewController: UIViewController {
   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
    }
    
    @objc func addButtonClicked() {
        
        // Segue
        
    }
    
}
