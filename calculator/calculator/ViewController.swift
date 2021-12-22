//
//  ViewController.swift
//  calculator
//
//  Created by Beyza Karadeniz on 22.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var calculatorWorkinsArea: UILabel!
    
    @IBOutlet weak var calculatorResultsArea: UILabel!
    
    var workingsArea : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
    }
    func clearAll(){
        workingsArea = ""
        calculatorWorkinsArea.text = ""
        calculatorResultsArea.text = ""
        
    }
    @IBAction func equalsTapButton(_ sender: Any) {
        let expression = NSExpression(format: workingsArea)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calculatorResultsArea.text = resultString
    }
    
    func formatResult(result : Double) -> String {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
           {
            return String(format: "%.0f", result)
        }
           else {
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func allClearButton(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func backNumberTap(_ sender: Any) {
        if(!workingsArea.isEmpty){
            workingsArea.removeLast()
            calculatorWorkinsArea.text = workingsArea
        }
    }
    
    func addToWorkings(value : String){
        workingsArea = workingsArea + value
        calculatorWorkinsArea.text = workingsArea
        
    }
    
    @IBAction func percentTap(_ sender: Any) {
        addToWorkings(value: "%")
    }
    
    @IBAction func divideTap(_ sender: Any) {
        addToWorkings(value: "/")

    }
    
    @IBAction func multiTap(_ sender: Any) {
        addToWorkings(value: "x")

    }
    
    @IBAction func minusTap(_ sender: Any) {
        addToWorkings(value: "-")

    }
    
    @IBAction func plusTap(_ sender: Any) {
        addToWorkings(value: "+")

    }
    
    
    @IBAction func decimalNumber(_ sender: Any) {
        addToWorkings(value: ".")

    }
    
    @IBAction func zeroNumberTap(_ sender: Any) {
        addToWorkings(value: "4")

    }
    
    @IBAction func threeNumberTap(_ sender: Any) {
        addToWorkings(value: "3")

    }
    
    @IBAction func twoNumbetTap(_ sender: Any) {
        addToWorkings(value: "2")

    }
    
    @IBAction func oneNumberTap(_ sender: Any) {
        addToWorkings(value: "1")

    }
    
    @IBAction func sixNumberTap(_ sender: Any) {
        addToWorkings(value: "6")

    }
    
    @IBAction func fiveNumberTap(_ sender: Any) {
        addToWorkings(value: "5")

    }
    
    @IBAction func fourNumberTap(_ sender: Any) {
        addToWorkings(value: "4")

    }
    
    @IBAction func nineNumberTap(_ sender: Any) {
        addToWorkings(value: "9")

    }
    
    @IBAction func eightNumberTap(_ sender: Any) {
        addToWorkings(value: "8")

    }
    
    @IBAction func sevenNumberTap(_ sender: Any) {
        addToWorkings(value: "7")

    }
    
    
    
}

