//
//  SignUpViewController.swift
//  MeatyApp
//
//  Created by Đào Kiều Anh on 7/21/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtComfirmPassword: UITextField!
    
    
    @IBAction func btnRegister(_ sender: Any) {
        if(txtPassword.text == txtComfirmPassword.text && txtPassword.text?.count ?? 0 >= 6)
        {
            if(signup(txtUsername.text!, txtPassword.text!))
            {
                let alert = UIAlertController(title: "Error", message: "successful!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                    
                    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                    let LogInView = storyBoard.instantiateViewController(withIdentifier: "uilogin") as! ViewController
                    self.present(LogInView, animated: true, completion: nil)

                }))
                self.present(alert, animated: true)
            }
        }
        else{
            let alert = UIAlertController(title: "Error", message: "Password must be more than 6 character! and Password and comfirmpassword must be same!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
        }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
