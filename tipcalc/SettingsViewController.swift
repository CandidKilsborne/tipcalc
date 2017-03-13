//
//  SettingsViewController.swift
//  tipcalc
//
//  Created by Aaron Piotrowski on 3/4/17.
//  Copyright © 2017 Aaron Piotrowski. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var lowTipTextField: UITextField!
    @IBOutlet weak var medTipTextField: UITextField!
    @IBOutlet weak var highTipTextField: UITextField!
    
    var usersTipPercentages = [Float]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard
        
        if(defaults.bool(forKey: "lowTip")) {
            let low = defaults.float(forKey: "lowTip")
            lowTipTextField.text = String(Int(low * 100))
        } else {
            let low = 0.15
            lowTipTextField.text = String(Int(low * 100))
        }
        
        if(defaults.bool(forKey: "medTip")) {
            let med = defaults.float(forKey: "medTip")
            medTipTextField.text = String(Int(med * 100))
        } else {
            let med = 0.2
            medTipTextField.text = String(Int(med * 100))
        }
        
        if(defaults.bool(forKey: "highTip")) {
            let high = defaults.float(forKey: "highTip")
            highTipTextField.text = String(Int(high * 100))
        } else {
            let high = 0.25
            highTipTextField.text = String(Int(high * 100))
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
        usersTipPercentages = [Float(lowTipTextField.text!)! / 100, Float(medTipTextField.text!)! / 100, Float(highTipTextField.text!)! / 100]
        saveUserPercents()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    
    func saveUserPercents() {
        let defaults = UserDefaults.standard
        
        defaults.set(usersTipPercentages[0], forKey: "lowTip")
        defaults.set(usersTipPercentages[1], forKey: "medTip")
        defaults.set(usersTipPercentages[2], forKey: "highTip")
        
        defaults.synchronize()
    }

}
