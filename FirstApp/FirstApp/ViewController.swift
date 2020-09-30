//
//  ViewController.swift
//  FirstApp
//
//  Created by Андрей on 24/09/2020.
//  Copyright © 2020 Андрей. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    
    
    @IBOutlet weak var tipAmountLabel: UITextField!
    
    @IBOutlet weak var tipAmountLabel3: UITextField!
    
    @IBOutlet weak var tipAmountLabel10: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didPressCountButton(_ sender: UIButton) {
        guard let text = textfield.text,
            let number = Double(text) else {
                return
        }
        let tipAmount = number * 0.05
        let tipAmount3 = number * 0.03
        let tipAmount10 = number * 0.1
        tipAmountLabel.text = "\(tipAmount)"
        tipAmountLabel3.text = "\(tipAmount3)"
        tipAmountLabel10.text = "\(tipAmount10)"
    }
    
    @IBAction func cleaner(_ sender: UIButton) {
        textfield.text = ""
        tipAmountLabel.text = "-"
        tipAmountLabel3.text = "-"
        tipAmountLabel10.text = "-"
        
    }
}

