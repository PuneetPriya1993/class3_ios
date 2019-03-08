//
//  AboutViewController.swift
//  day3ios
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    
    @IBOutlet weak var progressbar: UIProgressView!
    @IBOutlet weak var sliderlbl: UILabel!
    
    @IBOutlet weak var lblstepper: UILabel!
    
    @IBOutlet weak var lblanimal: UILabel!
    
    @IBOutlet weak var imagee: UIImageView!
    
    @IBOutlet weak var segmentAnimal: UISegmentedControl!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
            imagee.image = UIImage(named: "dog.jpeg")
        
        
        // Add segment dynamically
        
        segmentAnimal.insertSegment(withTitle: "Forth", at: 3, animated: true)
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func btnClick(_ sender: UIButton)
    {
            let v = self.navigationController?.viewControllers[0]
        self.navigationController?.popToViewController(v!, animated: true)
    }
    
    
    
    
    @IBAction func segmentChange(_ sender: UISegmentedControl)
    {
        print(sender.selectedSegmentIndex)
        
        
        switch sender.selectedSegmentIndex
        {
        case 0:
            lblanimal.text = "Cat"
            imagee.image = UIImage(named: "cat.jpeg")
            break
            
        case 1:
            lblanimal.text = "Lion"
            imagee.image = UIImage(named: "lion.jpeg")
            break
            
        case 2:
            lblanimal.text = "Dog"
            imagee.image = UIImage(named: "dog.jpeg")
            break
            
        case 3:
            lblanimal.text = "i am dynamic monkey"
            imagee.image = UIImage(named: "monkey.jpeg")
            break
        default:
            print("Invalid Choice")
        }
    }
    
    
    
    
    @IBAction func stepper(_ sender: UIStepper)
    {
        lblstepper.text = "\(sender.value)"
        
    }
    
    @IBAction func slider(_ sender: UISlider) {
        sliderlbl.text = "\(sender.value)"
        
        progressbar.progress = sender.value / 100.0
        
    }
    
    
    
    
    
    
}
