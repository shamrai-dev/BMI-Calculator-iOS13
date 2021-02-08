//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var sliderWeight: UISlider!
    
    var calcBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderHeight.setValue(1.5, animated: true)
        sliderWeight.setValue(100.0, animated: true)
    }

    @IBAction func sliderHeightChanged(_ sender: UISlider) {
        labelHeight.text = calcBrain.setHeight(sender.value)
    }
    @IBAction func sliderWeightChanged(_ sender: UISlider) {
        labelWeight.text = calcBrain.setWeight(sender.value)
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        calcBrain.getBmi()
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calcBrain.getBmi()
        }
    }
}

