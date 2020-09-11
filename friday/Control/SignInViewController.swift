//
//  SignInViewController.swift
//  friday
//
//  Created by 李孟倫 on 2020/9/2.
//  Copyright © 2020 溫家豪. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class SignInViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressSignUP(_ sender: Any) {
            
            
    }

    @IBAction func pressSignIn(_ sender: Any) {
        let login = Login(Account: usernameTextField.text!, Password: passwordTextField.text!)
        AF.request("http://nkust.cf:3000/nkust/Login",
               method: .post,
               parameters: login,
               encoder: JSONParameterEncoder.default).responseJSON { response in
               debugPrint(response)
                switch response.result {
                case .success(let value):
                    print(value)
                    let json = JSON(value)
                    let user = User(json)
                    self.performSegue(withIdentifier: "goToForum", sender: user)
                case let .failure(error):
                    print(error)
                }
        }
            
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let mainAppVC = segue.destination as? ForumViewController, let user = sender as? User {
            
            mainAppVC.user = user
        }
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

