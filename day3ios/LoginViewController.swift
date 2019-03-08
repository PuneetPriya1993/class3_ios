//
//  ViewController.swift
//  day3ios
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var txt1: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBOutlet weak var btnswitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func btnClick(_ sender: UIButton)
    {
        
        if(txt1.text == "p1@gmail.com" && password.text == "priya")
        {
            let sb = UIStoryboard(name: "Main", bundle: nil)
            
            let next = sb.instantiateViewController(withIdentifier: "1") as! HomeViewController
            
            
            
            next.userEmail = txt1.text
            //self.present(next, animated: true)
        
        self.navigationController?.pushViewController(next, animated: true)
        
            
            // persistent storage types:
                // 1. user defined
                // 2. property list
                // 3. core data / sqlite
                // 4. XMC/JSON/text etc
                // 5. REST API/ Cloud
            
let userDefault = UserDefaults.standard
            
            if(btnswitch.isOn)
            {
                // Store Data to user Default Storage
                
                userDefault.set(txt1.text, forKey: "userEmail")
                userDefault.set(password.text, forKey: "userPassword")
            }
            
            else
            {
               userDefault.removeObject(forKey: "userEmail")
                
                userDefault.removeObject(forKey: "userPassword")
            }
            
        }
        
        else
        {
            let alert = UIAlertController(title: "Invalid", message: "Invalid username and password", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            
            self.present(alert, animated:  true)
        }
    }
}

