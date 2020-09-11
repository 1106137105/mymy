//
//  User.swift
//  friday
//
//  Created by 李孟倫 on 2020/9/4.
//  Copyright © 2020 溫家豪. All rights reserved.
//

import Foundation
import SwiftyJSON


struct User: Codable{
    let Uid: Int
    let Account: String
    let Password: String
    let UserName: String
    let Email: String
    let Gender: Int
    
    init(_ json: JSON){
        
        self.Uid = json["Uid"].intValue
        self.Account = json["Account"].stringValue
        self.Password = json["Password"].stringValue
        self.UserName = json["UserName"].stringValue
        self.Email = json["Email"].stringValue
        self.Gender = json["Gender"].intValue
        
    }
}
