//
//  HomeViewController.swift
//  friday
//
//  Created by 溫家豪 on 2020/9/18.
//  Copyright © 2020 溫家豪. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func ClassesIntroductionPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToClassesIntroduction", sender: self)
    }
    @IBAction func NewsPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToNews", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
