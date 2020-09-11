//
//  User.swift
//  friday
//
//  Created by 李孟倫 on 2020/9/4.
//  Copyright © 2020 溫家豪. All rights reserved.
//

import Foundation


struct User: Decodable {
    let Uid: Int
    let Account: String
    let Password: String
    let UserName: String
    let Email: String
    let Gender: Int
}
