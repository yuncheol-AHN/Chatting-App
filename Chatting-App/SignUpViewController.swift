//
//  SignUpViewController.swift
//  Chatting-App
//
//  Created by 안윤철 on 2022/11/13.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore
import FirebaseCore

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @IBAction func signUpPressed(_ sender: UIButton) {
        if let email = emailText.text, let password = passwordText.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                
                if let err = error {
                    
                    let sheet = UIAlertController(title: "Error", message: err.localizedDescription, preferredStyle: .alert)
                    sheet.addAction(UIAlertAction(title: "확인!", style: .default))
                    
                    self.present(sheet, animated: false)
                } else {
                    
                    self.dismiss(animated: false)
                }
            }
        }
        
        
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
