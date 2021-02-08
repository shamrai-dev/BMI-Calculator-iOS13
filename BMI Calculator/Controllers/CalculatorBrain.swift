//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sergii Shamrai on 05.02.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    var height: Float
    var weight: Float
    var bmiValue: String
    
    init() {
        height = 1.5
        weight = 100
        bmiValue = ""
        getBmi()
    }
    
    func setHeight(_ height: Float) -> String {
        self.height = height
        return String(format: "%.2fm", self.height)
    }
    
    func setWeight(_ weight: Float) -> String {
        self.weight = weight
        return String(format: "%.1fKg", self.weight)
    }
    
    func getBmi() -> String {
        let bmi = self.weight / pow(self.height, self.height)
        self.bmiValue = String(format: "%.2f", bmi)
        return self.bmiValue
    }
}
