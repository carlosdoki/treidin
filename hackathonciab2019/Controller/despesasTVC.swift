//
//  despesasTVC.swift
//  hackathonciab2019
//
//  Created by Carlos Doki on 09/06/19.
//  Copyright © 2019 Carlos Doki. All rights reserved.
//

import UIKit

class despesasTVC: UITableViewCell {

    @IBOutlet weak var despesaTxt: UITextField!
    @IBOutlet weak var valorTxt: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func depesasCHanged(_ sender: Any) {
    }
}
