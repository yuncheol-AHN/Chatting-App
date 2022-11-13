//
//  ChatViewController.swift
//  Chatting-App
//
//  Created by 안윤철 on 2022/11/13.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func messagePressed(_ sender: UIButton) {
        
    }
    
    @IBAction func logoutPressed(_ sender: UIBarButtonItem) {
        let firebaseAuth = Auth.auth()
        
        do {
            try firebaseAuth.signOut()
            
            navigationController?.popToRootViewController(animated: false)
        } catch let signOutError as NSError {
            print("sign out error : %@", signOutError)
        }
    }
}
