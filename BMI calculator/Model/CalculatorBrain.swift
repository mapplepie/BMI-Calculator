//
//  CalculatorBrain.swift
//  BMI calculator
//
//  Created by Mai Uchida on 2021/11/13.
//

import Foundation
import UIKit


struct CalculatorBrain{
    var bmi : BMI?
    
    func getBMIValue()-> String{
        let dicimalToOnePlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return dicimalToOnePlace
    }
    
    func getAdvice()-> String{
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? .white
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5{
            bmi = BMI(advice: "Eat More", value: bmiValue, color: .green)
        }else if bmiValue < 24.9{
            bmi = BMI(advice: "maintain", value: bmiValue, color: .yellow)
        }else{
            bmi = BMI(advice: "Eat less", value: bmiValue, color: .red)
        }
    }
    
}
