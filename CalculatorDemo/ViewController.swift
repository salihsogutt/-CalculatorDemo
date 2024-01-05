//
//  ViewController.swift
//  Odev5
//
//  Created by salih söğüt on 17.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var sayi1 = 0
    var sayi2 = 0
    var calucateTapped:Bool = false
    var type:CalculateType = .minus

    @IBOutlet weak var acButton: UIButton!
    @IBOutlet weak var plusMinusButton: UIButton!
    @IBOutlet weak var percentageButton: UIButton!
    @IBOutlet weak var dividerButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var treeButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var commaButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "0"
         
        
        view.layoutSubviews()
        
        
    }
  
    override func viewDidLayoutSubviews() {
        acButton.makeCircle()
        plusMinusButton.makeCircle()
        percentageButton.makeCircle()
        dividerButton.makeCircle()
        sevenButton.makeCircle()
        eightButton.makeCircle()
        nineButton.makeCircle()
        multiplyButton.makeCircle()
        fourButton.makeCircle()
        fiveButton.makeCircle()
        sixButton.makeCircle()
        minusButton.makeCircle()
        oneButton.makeCircle()
        twoButton.makeCircle()
        treeButton.makeCircle()
        plusButton.makeCircle()
        zeroButton.layer.cornerRadius = 43
        //zeroButton.clipsToBounds = true
        commaButton.makeCircle()
        equalButton.makeCircle()
    }
    
    @IBAction func buttonSifirla(_ sender: Any) {
        calucateTapped = false
        resultLabel.text = "0"
    }
    @IBAction func buttonBolme(_ sender: Any) {
        calucateTapped = true
        if let text = resultLabel.text {
            sayi1 = Int(text) ?? 0
        }
        type = .plenty
    }
    @IBAction func buttonCarpma(_ sender: Any) {
        calucateTapped = true
        if let text = resultLabel.text {
            sayi1 = Int(text) ?? 0
        }
        type = .multiply
    }
    @IBAction func buttonCikarma(_ sender: Any) {
        calucateTapped = true
        if let text = resultLabel.text {
            sayi1 = Int(text) ?? 0
        }
        type = .minus
    }
    @IBAction func buttonToplama(_ sender: Any) {
        calucateTapped = true
        if let text = resultLabel.text {
            sayi1 = Int(text) ?? 0
        }
        type = .plus
    }
    @IBAction func buttonEsittir(_ sender: Any) {
        calucateTapped = true
        if let text = resultLabel.text {
            sayi2 = Int(text) ?? 0
        }
        esittir()
    }
    @IBAction func button0(_ sender: Any) {
        onNumber(num: "0")
    }
    @IBAction func button1(_ sender: Any) {
        onNumber(num: "1")
    }
    @IBAction func button2(_ sender: Any) {
        onNumber(num: "2")
    }
    @IBAction func button3(_ sender: Any) {
        onNumber(num: "3")
    }
    @IBAction func button4(_ sender: Any) {
        onNumber(num: "4")
    }
    @IBAction func button5(_ sender: Any) {
        onNumber(num: "5")
    }
    @IBAction func button6(_ sender: Any) {
        onNumber(num: "6")
    }
    @IBAction func button7(_ sender: Any) {
        onNumber(num: "7")
    }
    @IBAction func button8(_ sender: Any) {
        onNumber(num: "8")
    }
    @IBAction func button9(_ sender: Any) {
        onNumber(num: "9")
    }
    
    func onNumber(num:String) {
        if resultLabel.text! == "0" || calucateTapped == true {
            resultLabel.text! = num
            calucateTapped = false
        }else{
            resultLabel.text! += num
        }
    }
    
    func esittir() {
        switch type {
        case .minus:
            resultLabel.text = String(sayi1 - sayi2)
        case .plus:
            resultLabel.text = String(sayi1 + sayi2)
        case .multiply:
            resultLabel.text = String(sayi1 * sayi2)
        case .plenty:
            resultLabel.text = String(sayi1 / sayi2)
        }
    }
    
    enum CalculateType {
        case minus, plus, multiply, plenty
    }
}

extension UIButton {
    
    func makeCircle() {
        self.layer.cornerRadius = self.frame.width/2
        clipsToBounds = true
    }
}
