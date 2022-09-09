//
//  ViewController.swift
//  Takuyakadai2
//
//  Created by takuya nakahara on 2022/09/05.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var inputOne: UITextField!
    @IBOutlet private var inputTwo: UITextField!
    @IBOutlet private var calculationSegment: UISegmentedControl!
    @IBOutlet private var resultLabel: UILabel!


    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let inputValueOne = Float(inputOne.text!) ?? 0
        let inputValueTwo = Float(inputTwo.text!) ?? 0
        let selectedSegment = calculationSegment.selectedSegmentIndex

        switch selectedSegment {
        case 0:
            resultLabel.text = String(format: "%.1f", inputValueOne + inputValueTwo)
        case 1:
            resultLabel.text = String(format: "%.1f", inputValueOne - inputValueTwo)
        case 2:
            resultLabel.text = String(format: "%.1f", inputValueOne * inputValueTwo)
        case 3:
            if inputValueTwo != 0 {
                resultLabel.text = String(format: "%.1f", inputValueOne / inputValueTwo)
            } else {
                resultLabel.text = "割る数には０以外を入力してください"
            }
        default:
            fatalError("selectedSegment is invalid.")
        }
    }
}
