//
//  ChatViewController.swift
//  hackathonciab2019
//
//  Created by Carlos Doki on 08/06/19.
//  Copyright © 2019 Carlos Doki. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var sonhoImage: UIImageView!
    @IBOutlet weak var dividaImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func continuarPressed(_ sender: Any) {
        if (sonhoImage.image == UIImage(named: "ic_check_box")) {
            divida = 0
            performSegue(withIdentifier: "inicial", sender: nil)
        }
        else {
            divida = 1
            performSegue(withIdentifier: "divida", sender: nil)
        }
    }
    
    @IBAction func sonhoPressed(_ sender: Any) {
        if (dividaImage.image == UIImage(named: "ic_check_box_outline_blank")) {
            if (sonhoImage.image == UIImage(named: "ic_check_box_outline_blank")) {
                sonhoImage.image = UIImage(named: "ic_check_box")
            } else {
                sonhoImage.image = UIImage(named: "ic_check_box_outline_blank")
            }
        }
    }
    
    @IBAction func dividaPressed(_ sender: Any) {
        if (sonhoImage.image == UIImage(named: "ic_check_box_outline_blank")) {
            if (dividaImage.image == UIImage(named: "ic_check_box_outline_blank")) {
                dividaImage.image = UIImage(named: "ic_check_box")
            } else {
                dividaImage.image = UIImage(named: "ic_check_box_outline_blank")
            }
        }
    }
    
}
