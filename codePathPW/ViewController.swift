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
    

    @IBOutlet weak var inputFt: UITextField!
    @IBOutlet weak var inputIn: UITextField!
    @IBOutlet weak var inputLb: UITextField!
   
    @IBOutlet weak var result: UILabel!
    @IBAction func calculateBMI(_ sender: UIButton) {
        if let heightinFt = inputFt.text, let heightinIn = inputIn.text, let wheightinLb = inputLb.text,
           
            let heightinFt = Int(heightinFt), let heightinIn = Int(heightinIn), let wheightinLb = Int(wheightinLb) {

            let inches = (heightinFt * 12) + heightinIn
            let bmi = Double(wheightinLb) / Double(inches * inches) * 703
                    
            result.text = String(format: "BMI: %.2f", bmi)
        } else {
                result.text = "Invalid input"
            }
       
    }

    
}

