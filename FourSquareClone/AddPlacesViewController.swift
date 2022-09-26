//
//  AddPlacesViewController.swift
//  FourSquareClone
//
//  Created by Noyan Çepikkurt on 26.09.2022.
//

import UIKit


class AddPlacesViewController: UIViewController {

    @IBOutlet weak var placeNameText: UITextField!
    @IBOutlet weak var placeTypeText: UITextField!
    @IBOutlet weak var placeAtmosphereText: UITextField!
    @IBOutlet weak var placeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func nextButtonClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "toMapVC", sender: nil)
        
    }
    

}
