//
//  ViewController.swift
//  TipCalculator
//
//  Created by Jasmine Edwards on 12/17/17.
//  Copyright © 2017 Jasmine Edwards. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

   
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func onTap(_ sender: Any)
    {
        
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any)
    {
        
        let tipPercentages = [0.18,0.2,0.25]
        
        
        
        let bill = Double(billField.text!) ?? 0
       
        
        let tip = bill  * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipLabel.text=String(tip)
        
        totalLabel.text=String(format:"$%.2f",total)
     
        
        
    }
    
    
}

