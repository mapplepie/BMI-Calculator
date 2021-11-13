//
//  ResultViewController.swift
//  BMI calculator
//
//  Created by Mai Uchida on 2021/11/13.
//

import UIKit

class ResultViewController: UITableViewController {
    
    var bmiValue: String?
    var advice: String?
    var color : UIColor?


    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    @IBAction func recalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
