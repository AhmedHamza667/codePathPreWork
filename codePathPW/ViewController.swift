//
//  ViewController.swift
//  codePathPW
//
//  Created by Ahmed Hamza on 8/24/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBGColor(_ sender: UIButton) {
        func changeColor() -> UIColor{
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBOutlet weak var heightFttf: UITextField!
    @IBOutlet weak var heightIntf: UITextField!
    @IBOutlet weak var weighttf: UITextField!
    @IBOutlet weak var result: UILabel!

    @IBAction func calculateBMI(_ sender: UIButton) {
        if let heightFtText = heightFttf.text, let heightInText = heightIntf.text, let weightText = weighttf.text,
           let heightFt = Int(heightFtText), let heightIn = Int(heightInText), let weight = Int(weightText) {
            
            let inches = (heightFt * 12) + heightIn
            let bmi = Double(weight) / Double(inches * inches) * 703
                    
            result.text = String(format: "BMI: %.2f", bmi)
        } else {
            result.text = "Invalid input"
        }
    }

    
}

