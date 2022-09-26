//
//  ViewController.swift
//  FourSquareClone
//
//  Created by Noyan Çepikkurt on 25.09.2022.
//

import UIKit
import Parse

class SignUpVC: UIViewController {
   
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        let parseObject = PFObject(className: "Fruits")
        parseObject["Names"] = "Banana"
        parseObject["Calories"] = 150
        
        parseObject.saveInBackground { success, error in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                print("success")
            }
        }
          
        
        let query = PFQuery(className: "Fruits")
        query.findObjectsInBackground { objects, error in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                print(objects)
            }
        }
         */
        
        
        
        
        
    }

    @IBAction func signInButtonClicked(_ sender: Any) {
        
        if usernameText.text! != "" && passwordText.text! != "" {
            
            PFUser.logInWithUsername(inBackground: usernameText.text!, password: passwordText.text!) { user, error in
                
                if error != nil {
                    self.makeAlert(titleInput: "ERROR", messageInput: error?.localizedDescription ?? "Error")
                    
                }else {
                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                    
                }
            }
            
            
        } else {
            makeAlert(titleInput: "ERROR", messageInput: "Username/Password ??")
        }
        
        
    }
    
   
    @IBAction func signUpButtonClicked(_ sender: Any) {
        
        if usernameText.text != "" && passwordText.text != "" {
            
            let user = PFUser()
            
            user.username = usernameText.text!
            user.password = passwordText.text!
            
            user.signUpInBackground { success, error in
               
                if error != nil {
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error!")
                } else {
                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                }
            }
            
        } else {
            makeAlert(titleInput: "ERROR", messageInput: "Username/Password ? ")
        }
        
    }
    
    func makeAlert(titleInput:String, messageInput:String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}

