//
//  Userdefaults.swift
//  friday
//
//  Created by 李孟倫 on 2020/9/23.
//  Copyright © 2020 溫家豪. All rights reserved.
//

import Foundation

extension UserDefaults{

    func setUserId(_ value: Int) {
        UserDefaults.standard.set(value, forKey: "UserId")
        UserDefaults.standard.synchronize()
    }
    
    func getUserId() -> Int{
        return UserDefaults.standard.value(forKey: "UserId") as! Int
    }
}
