//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Sergii Shamrai on 05.02.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        label.backgroundColor = .red
        view.addSubview(label)
    }
}
