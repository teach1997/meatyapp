//
//  ContactsShow.swift
//  MeatyApp
//
//  Created by Đào Kiều Anh on 7/24/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

public func showcontactsview() -> [String]
{
    let a = ["Thông tin chi tiết","Đã thích","Meaty coin", "Đánh giá của tôi", "Logout!"]
    return a
}
public func numberofcontactselect() -> [Int]
{
    var a:[Int] = []
    for i in 0...showcontactsview().count {
        a[i] = i
    }
    return a
}
