//
//  SettingsViewController.swift
//  TipTop
//
//  Created by quentin picard on 9/20/16.
//  Copyright © 2016 QP. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    @IBAction func onSwipeSettings(_ sender: UISwipeGestureRecognizer) {
        if let resultController = storyboard!.instantiateViewController(withIdentifier: "mainStoryboard") as? ViewController {
            present(resultController, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //defaultTipControl.
        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        let defaultTipSelection = defaults.integer(forKey: "Tip_key")
        defaultTipControl.selectedSegmentIndex = defaultTipSelection

    }
    
    override func viewWillAppear(_ animated: Bool) {
        view.backgroundColor = UIColor.lightGray
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func setDefaultTip(_ sender: AnyObject) {
        
        let defaultTipselection = defaultTipControl.selectedSegmentIndex
        
        let defaults = UserDefaults.standard
        defaults.set(defaultTipselection, forKey: "Tip_key")
        defaults.synchronize()
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
