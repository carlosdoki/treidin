//
//  DespesasVC.swift
//  hackathonciab2019
//
//  Created by Carlos Doki on 09/06/19.
//  Copyright © 2019 Carlos Doki. All rights reserved.
//

import UIKit

class DespesasVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func proximoPressed(_ sender: Any) {
        if (divida == 0 ) {
            performSegue(withIdentifier: "perfil", sender: nil)
        } else {
            performSegue(withIdentifier: "endividamento", sender: nil)
        }
        
    }

}
