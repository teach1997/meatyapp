//
//  UpdateAccountFireBase.swift
//  MeatyApp
//
//  Created by Đào Kiều Anh on 7/21/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit
import Firebase
func signup (_ a:String, _ b:String) ->  Bool {
    var flat = true
    Auth.auth().createUser(withEmail: a, password: b) { authResult, error in
        
    if(error == nil)
    {
        flat = true
        }
        else
    {
        flat = false
        }
        
}
    return flat
}
