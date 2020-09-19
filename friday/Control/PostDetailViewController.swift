//
//  PostDetailViewController.swift
//  friday
//
//  Created by 李孟倫 on 2020/9/19.
//  Copyright © 2020 溫家豪. All rights reserved.
//

import UIKit

class PostDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    var titleText: String?
    var contentText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let titleText = titleText,let contentText = contentText{
            titleLabel.text = titleText
            contentLabel.text = contentText
        }
        
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
