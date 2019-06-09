//
//  RendaVC.swift
//  hackathonciab2019
//
//  Created by Carlos Doki on 09/06/19.
//  Copyright © 2019 Carlos Doki. All rights reserved.
//

import UIKit

class RendaVC: UIViewController {

    @IBOutlet weak var rendaTxt: UITextField!
    @IBOutlet weak var despesaTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.hideKeyboardWhenTappedAround()

    }
    

    @IBAction func proximoPressed(_ sender: Any) {
        renda = Double(rendaTxt.text!)!
        despesas = Double(despesaTxt.text!)!
        performSegue(withIdentifier: "despesas", sender: nil)
    }

}
