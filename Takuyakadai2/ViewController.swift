//
//  ViewController.swift
//  Takuyakadai2
//
//  Created by takuya nakahara on 2022/09/05.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputOne: UITextField!
    @IBOutlet weak var inputTwo: UITextField!
    @IBOutlet weak var calculationSegment: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let inputValueOne = Float(inputOne.text!) ?? 0
        let inputValueTwo = Float(inputTwo.text!) ?? 0
        let selectedSegment = calculationSegment.selectedSegmentIndex
        var result: Float
        
        if selectedSegment == 0 {
            result = inputValueOne + inputValueTwo
            resultLabel.text = String(format: "%.1f", result)
        } else if selectedSegment == 1 {
            result = inputValueOne - inputValueTwo
            resultLabel.text = String(format: "%.1f", result)
        } else if selectedSegment == 2 {
            result = inputValueOne * inputValueTwo
            resultLabel.text = String(format: "%.1f", result)
        } else {
            if inputValueTwo != 0 {
                result = inputValueOne / inputValueTwo
                resultLabel.text = String(format: "%.1f", result)
            } else {
                resultLabel.text = "割る数には０以外を入力してください"
            }
        }
        
        
    }
}

