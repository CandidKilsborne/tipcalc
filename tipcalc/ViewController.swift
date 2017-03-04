//
//  ViewController.swift
//  tipcalc
//
//  Created by Aaron Piotrowski on 3/4/17.
//  Copyright © 2017 Aaron Piotrowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: UITextField) {
        let bill = billAmountTextField.text
        
        tipAmountLabel.text = "$10.00"
        totalAmountLabel.text = "$100.00"
    }

}

