//
//  DividaVC.swift
//  hackathonciab2019
//
//  Created by Carlos Doki on 09/06/19.
//  Copyright © 2019 Carlos Doki. All rights reserved.
//

import UIKit

class DividaVC: UIViewController {

    @IBOutlet weak var custoTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func proximoPressed(_ sender: Any) {
        custo = Double(custoTxt.text!)!
        performSegue(withIdentifier: "renda2", sender: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
