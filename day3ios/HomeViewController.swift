//
//  HomeViewController.swift
//  day3ios
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var userEmail: String?
    
    @IBOutlet weak var lbl1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let e = userEmail{
            self.lbl1.text = "Wlcome.....\(e)" 
        }
        
        let userDefault = UserDefaults.standard
        
        if let email = userDefault.string(forKey: "userEmail")
        {
            print(email)
        }
        
     if   let password = userDefault.string(forKey: "userPassword")
     {
        print(password)
        }
        
       // print(email, password)
        // to hide back button of login
        
        
        self.navigationItem.hidesBackButton = true
        
        // to change the title dynamically
        
        
        self.navigationItem.title = "I am Dynamic title"
        
       // to change the color
        self.navigationController?.navigationBar.backgroundColor = UIColor.blue
      //  self.navigationController?.hidesBarsOnTap = true
        
        
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnforAbout(_ sender: UIButton)
    {
        
     //   self.performSegue(withIdentifier: "movetoaboutus", sender: nil)
        
        // self.performSegue(withIdentifier: "movetoLoginPage", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
