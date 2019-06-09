//
//  DespesasVC.swift
//  hackathonciab2019
//
//  Created by Carlos Doki on 09/06/19.
//  Copyright © 2019 Carlos Doki. All rights reserved.
//

import UIKit
import FirebaseFirestore

class DespesasVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var saldoTxt: UITextField!
    @IBOutlet weak var mensalTxt: UITextField!
    
    var despesasList = ["","","",""]
    var valores = [0.0,0.0,0.0,0.0]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.reloadData()
        
        var c = 0.0
        if (divida == 0) {
            saldoTxt.text = "\(renda - despesas)"
            c = Double(Float(custo) / Float(tempo))
        } else {
            c = 0.0
        }
        mensalTxt.text = "\(c)"
        
        self.hideKeyboardWhenTappedAround()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func proximoPressed(_ sender: Any) {
//        let db = Firestore.firestore()
//        db.collection("users").document(nome).setData([
//            "custo": custo,
//            "tempo": tempo,
//            "renda": renda,
//            "despesa": despesas
//        ]) { err in
//            if let err = err {
//                print("Error writing document: \(err)")
//            } else {
//                print("Document successfully written!")
                if (divida == 0 ) {
                    performSegue(withIdentifier: "perfil", sender: nil)
                } else {
                    performSegue(withIdentifier: "endividamento", sender: nil)
                }
//            }
//        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return despesasList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = despesasList[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "despesa") as? despesasTVC {
            cell.despesaTxt.text = post
            cell.valorTxt.text = "\(valores[indexPath.row])"
            return cell
        } else {
            return despesasTVC()
        }

    }
    
    @IBAction func valorEnd(_ sender: Any) {
        
    }
    
}
