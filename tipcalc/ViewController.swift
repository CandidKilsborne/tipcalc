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
    @IBOutlet weak var tipPercentSelector: UISegmentedControl!
    
    var usersTipPercentages = [Float]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard
        
        if(defaults.bool(forKey: "lowTip")) {
            let low = defaults.float(forKey: "lowTip")
            usersTipPercentages.append(low)
        } else {
            let low = 0.15
            usersTipPercentages.append(Float(low))
        }
        
        if(defaults.bool(forKey: "medTip")) {
            let med = defaults.float(forKey: "medTip")
            usersTipPercentages.append(med)
        } else {
            let med = 0.2
            usersTipPercentages.append(Float(med))
        }
        
        if(defaults.bool(forKey: "highTip")) {
            let high = defaults.float(forKey: "highTip")
            usersTipPercentages.append(high)
        } else {
            let high = 0.25
            usersTipPercentages.append(Float(high))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    

    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: UITextField) {
        let tipPercentages = usersTipPercentages
        
        let bill = Float(billAmountTextField.text!) ?? 0
        let tip = bill * tipPercentages[tipPercentSelector.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", total)
    }


}

