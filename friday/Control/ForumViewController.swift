//
//  ForumViewController.swift
//  friday
//
//  Created by 李孟倫 on 2020/9/4.
//  Copyright © 2020 溫家豪. All rights reserved.
//

import UIKit

class ForumViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
     var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = user?.UserName {
            
//            labelText.text = "\(name.capitalized)"
        }
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
