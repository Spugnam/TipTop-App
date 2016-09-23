//
//  ViewController.swift
//  TipTop
//
//  Created by quentin picard on 9/19/16.
//  Copyright © 2016 QP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipPercentageControl: UISegmentedControl!
    
    // This Right Pan is never called
    @IBAction func onRightPanGesture(_ sender: UIScreenEdgePanGestureRecognizer) {
        if let resultController = storyboard!.instantiateViewController(withIdentifier: "settingsStoryboard") as? SettingsViewController {
            present(resultController, animated: true, completion: nil)
        }
    }
    
    @IBAction func onSwipe(_ sender: UISwipeGestureRecognizer) {
        if let resultController = storyboard!.instantiateViewController(withIdentifier: "settingsStoryboard") as? SettingsViewController {
            present(resultController, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Recall last default tip selection
        let defaults = UserDefaults.standard
        let defaultTipSelection = defaults.integer(forKey: "Tip_key")
        tipPercentageControl.selectedSegmentIndex = defaultTipSelection
        
        //Remember bill amount for 3 mins
        

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Select bill field by default so user can start typing
        billField.becomeFirstResponder()
        
        let defaults = UserDefaults.standard
        let defaultTipSelection = defaults.integer(forKey: "Tip_key")
        tipPercentageControl.selectedSegmentIndex = defaultTipSelection
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentages = [0.15, 0.18, 0.2, 0.22]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipPercentageControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", locale: NSLocale.current, tip)
        totalLabel.text = String(format: "$%.2f", locale: NSLocale.current, total)

    }
}

