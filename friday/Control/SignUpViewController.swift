//
//  SignUpViewController.swift
//  friday
//
//  Created by 李孟倫 on 2020/9/2.
//  Copyright © 2020 溫家豪. All rights reserved.
//

import UIKit
import Alamofire

class SignUpViewController: UIViewController {

    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationItem.setHidesBackButton(true, animated: true)
        
    }
    @IBAction func pressSignUp(_ sender: Any) {
        let signup = SignUp(Account: accountTextField.text!, Password: passwordTextField.text!,UserName: usernameTextField.text!,Email: emailTextField.text!,Gender: Int(genderTextField.text!) ?? 1)
               AF.request("http://nkust.cf:3000/nkust/Register",
                      method: .post,
                      parameters: signup,
                      encoder: JSONParameterEncoder.default).responseString { response in
                      debugPrint(response)
                       switch response.result {
                       case .success(let value):
                           print(value)
                           _ = self.navigationController?.popViewController(animated: true)
                       case let .failure(error):
                           print(error)
                       }
               }
        
    }
    
    @IBAction func pressGoBack(_ sender: Any) {
       _ = self.navigationController?.popViewController(animated: true)
    }
}
