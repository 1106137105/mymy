//
//  ErrorResponse.swift
//  friday
//
//  Created by 李孟倫 on 2020/9/4.
//  Copyright © 2020 溫家豪. All rights reserved.
//

import Foundation


struct ErrorResponse: Decodable, LocalizedError {
    let reason: String
    
    var errorDescription: String? { return reason }
}
