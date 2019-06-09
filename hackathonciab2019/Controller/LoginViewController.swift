//
//  LoginViewController.swift
//  hackathonciab2019
//
//  Created by Carlos Doki on 08/06/19.
//  Copyright © 2019 Carlos Doki. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class LoginViewController: UIViewController,  UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var UserPickerView: UIPickerView!
    
    var nomes : [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserPickerView.delegate = self
        UserPickerView.dataSource = self
        
        let db = Firestore.firestore()
        
        db.collection("users").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID)")
                    self.nomes.append(document.documentID)
                }
            }
            self.UserPickerView.reloadAllComponents()
        }
    }
    

    @IBAction func loginPressed(_ sender: Any) {
        Auth.auth().signInAnonymously(completion: nil)
        performSegue(withIdentifier: "chat", sender: nil)

    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return nomes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return nomes[row]
    }
}
