//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by arnav on 01/11/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String{
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
      return bmiTo1DecimalPlace
     }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "no advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
   mutating func calculateBMI(height: Float, weight: Float) {
        
       let bmiValue = weight / (height * height)
     
    if bmiValue < 18.5 {
       bmi = BMI(value: bmiValue, advice: "eat more bro!!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
    }
    else if bmiValue < 24.9{
       bmi = BMI(value: bmiValue, advice: "fit as cristiano!!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
    }
    else{
        
        bmi = BMI(value: bmiValue, advice: "eat less bro!!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
    }
    
}
    
  
}
