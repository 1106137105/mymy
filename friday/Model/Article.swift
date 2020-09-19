//
//  User.swift
//  friday
//
//  Created by 李孟倫 on 2020/9/4.
//  Copyright © 2020 溫家豪. All rights reserved.
//

import Foundation
import SwiftyJSON


class Articles: Codable{
    let articles: [Article]
    
    init(articles: [Article]){
        self.articles = articles
    }
}



class Article: Codable{
    let Pid: Int
    let Uid: Int
    let Title: String
    let Content: String
    
    init(_ json: JSON){
        
        self.Pid = json["Pid"].intValue
        self.Uid = json["Uid"].intValue
        self.Title = json["Title"].stringValue
        self.Content = json["Content"].stringValue
    }
}
