//
//  iniciarSesionViewController.swift
//  Snapchat
//
//  Created by MAC19 on 9/05/19.
//  Copyright © 2019 OscarMolleapaza. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func IniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            print("Intentando iniciar sesion")
            if error != nil {
                print("Se presento el siguente error: \(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
        
        
    }
    
}
