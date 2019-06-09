//
//  EndividamentoVC.swift
//  hackathonciab2019
//
//  Created by Carlos Doki on 09/06/19.
//  Copyright © 2019 Carlos Doki. All rights reserved.
//

import UIKit

class EndividamentoVC: UIViewController {

    @IBOutlet weak var porcentagemTxt: UILabel!
    @IBOutlet weak var parcelasTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        porcentagemTxt.text = "300 %"
        parcelasTxt.text = "36"
        
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func proximoPressed(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "resumo") as! ViewController
//        controller.valores = [500, 400, 800, 750, 650, 500, 640, 510, 450, 600]
        self.present(controller, animated: true, completion: nil)
    }

}

//extension UIViewController {
//    func hideKeyboardWhenTappedAround() {
//        let tap: UITapGestureRecognizer =     UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
//        tap.cancelsTouchesInView = false
//        view.addGestureRecognizer(tap)
//    }
//    @objc func dismissKeyboard() {
//        view.endEditing(true)
//    }
//}
