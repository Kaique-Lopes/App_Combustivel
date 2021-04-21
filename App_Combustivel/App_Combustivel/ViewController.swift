//
//  ViewController.swift
//  App_Combustivel
//
//  Created by Kaique Lopes on 18/04/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfAlcool: UITextField!
    @IBOutlet weak var tfGasoline: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func calculatePrice(_ sender: Any) {
        if let alcool = tfAlcool.text {
            if let gasolina = tfGasoline.text {
                
                let result = self.validateValue(alcool: alcool, gasolina: gasolina)
                if result {
                    self.bestPrice(alcool: alcool, gasolina: gasolina)
                }else {
                    lbResult.text = "Digite os preços para Calcular"
                }
            }
        }
        
    }
    func bestPrice(alcool: String, gasolina: String) {
        
    }
    
    func validateValue(alcool: String, gasolina: String) -> Bool {
        var validate = true
        
        if alcool.isEmpty {
            validate = false
        }else if gasolina.isEmpty{
            validate = false
        }
        return validate
    }
}
