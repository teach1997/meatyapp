//
//  ContactsViewController.swift
//  MeatyApp
//
//  Created by Đào Kiều Anh on 7/24/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit
import Firebase

class ContactsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var contactstableview: UITableView!
    let contacts = showcontactsview()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.contactstableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        if (indexPath.row == 4) {
            let firebaseAuth = Auth.auth()
            do {
                try firebaseAuth.signOut()
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let LogOutView = storyBoard.instantiateViewController(withIdentifier: "uilogin") as! ViewController
                self.present(LogOutView, animated: true, completion: nil)
            } catch let signOutError as NSError {
                print ("Error signing out: %@", signOutError)
            }
        }
    }
    

    //@IBOutlet weak var contactstableview: UITableView!
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
