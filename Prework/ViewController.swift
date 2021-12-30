//
//  ViewController.swift
//  Prework
//
//  Created by Arielle Posadas on 12/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount from input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // get tip by tip * tipPercentage
        let tipPercentages = [0.15, 0.8, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

