//
//  ViewController.swift
//  AgroStack
//
//  Created by Ara Apoyan on 30.03.21.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    private let ref = Firebase.Database.database().reference(fromURL: "https://agrostack-f5284-default-rtdb.firebaseio.com/")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let value = ["firstName": "Ara", "lastName": "Apoyan"]
        self.ref.child("users").updateChildValues(value)
    }


}

