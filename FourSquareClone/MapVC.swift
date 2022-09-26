//
//  MapVC.swift
//  FourSquareClone
//
//  Created by Noyan Çepikkurt on 26.09.2022.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(title: "Save", style: UIBarButtonItem.Style.plain, target: self, action: #selector(saveButtonClicked))
        
    }
    
    @objc func saveButtonClicked() {
        
        
        
    }
    

}
