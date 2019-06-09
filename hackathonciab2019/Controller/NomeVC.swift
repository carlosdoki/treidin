//
//  NomeVC.swift
//  hackathonciab2019
//
//  Created by Carlos Doki on 09/06/19.
//  Copyright © 2019 Carlos Doki. All rights reserved.
//

import UIKit

class NomeVC: UIViewController {

    @IBOutlet weak var nomeTxt: UITextField!
    @IBOutlet weak var custoTxt: UITextField!
    @IBOutlet weak var tempoTxt: UITextField!
    @IBOutlet weak var sliderUI: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderUI.value = 24
        tempoTxt.text = "24"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func proximoPressed(_ sender: Any) {
        nome = nomeTxt.text!
        custo = Double(custoTxt.text!)!
        tempo = Int(sliderUI.value)
        performSegue(withIdentifier: "renda", sender: nil)
    }
    
    @IBAction func sliderChange(_ sender: Any) {
        tempoTxt.text = "\(Int(sliderUI.value))"
    }
    
    @IBAction func tempoChnaged(_ sender: Any) {
//        sliderUI.value = Int(tempoTxt.text)
    }
}
