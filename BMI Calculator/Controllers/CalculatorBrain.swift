//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sergii Shamrai on 05.02.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIvalue() -> String {
        let bmiValue = String(format: "%.1f", self.bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Undefined"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmi = weight / pow(height, height)
        if bmi < 18.5 {
            self.bmi = BMI(value: bmi, advice: "Eat more pies", color: #colorLiteral(red: 0.3859018087, green: 0.8047164083, blue: 0.9962034822, alpha: 1))
        } else if bmi < 24.9 {
            self.bmi = BMI(value: bmi, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            self.bmi = BMI(value: bmi, advice: "Eat less pies!", color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))
        }
    }
}
