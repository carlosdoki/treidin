//
//  MatrizVC.swift
//  hackathonciab2019
//
//  Created by Carlos Doki on 09/06/19.
//  Copyright © 2019 Carlos Doki. All rights reserved.
//

import UIKit

class MatrizVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func proximoPressed(_ sender: Any) {
        performSegue(withIdentifier: "principal2", sender: nil)
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
