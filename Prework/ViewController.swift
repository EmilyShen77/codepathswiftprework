//
//  ViewController.swift
//  Prework
//
//  Created by emily_shen on 22/8/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount from input text
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // get total tip
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

