//
//  AlertService.swift
//  friday
//
//  Created by 李孟倫 on 2020/9/4.
//  Copyright © 2020 溫家豪. All rights reserved.
//

import UIKit


class AlertService {
    
    func alert(message: String) -> UIAlertController {
        
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil)
        
        alert.addAction(action)
        
        return alert
    }
}
