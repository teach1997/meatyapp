//
//  ViewController.swift
//  MeatyApp
//
//  Created by Đào Kiều Anh on 7/17/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBAction func btnLogin(_ sender: Any) {
        Auth.auth().signIn(withEmail: txtUsername.text!, password: txtPassword.text!) { [weak self] user, error in
            guard let strongSelf = self else { return }
            if(error == nil)
            {
                let alert = UIAlertController(title: "successful", message: "successful!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                    let HomeView = storyBoard.instantiateViewController(withIdentifier: "uitabbar") as! TabbarViewController
                    self?.present(HomeView, animated: true, completion: nil)
                    }))
                self?.present(alert, animated: true)
                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

