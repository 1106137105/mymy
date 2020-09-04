//
//  SignInViewController.swift
//  friday
//
//  Created by 李孟倫 on 2020/9/2.
//  Copyright © 2020 溫家豪. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    
    let alertService = AlertService()
    let networkingService = NetworkingService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func pressSignUP(_ sender: Any) {
        guard
            let Account = usernameTextField.text,
            let Password = passwordTextField.text
            else{return}
        print(Account)
        print(Password)
        jsonRequest(Account: Account, Password: Password)
            }
            
            func formDataRequest(Account: String, Password: String) {
                let parameters = ["Account": Account,
                                  "Password": Password]
                
                  networkingService.request(endpoint: "/Login", parameters: parameters) { [weak self] (result) in
                    
                    switch result {
                        
                    case .success(let user): self?.performSegue(withIdentifier: "goToForum", sender: user)
                        
                    case.failure(let error):
                        
                        guard let alert = self?.alertService.alert(message: error.localizedDescription) else { return }
                        self?.present(alert, animated: true)
                    }
                }
            }
            
            func jsonRequest(Account:String, Password: String) {
                
                let login = Login(Account: Account, Password: Password)
                
                networkingService.request(endpoint: "/Login", loginObject: login) { [weak self] (result) in
                    
                    switch result {
                        
                    case .success(let user): self?.performSegue(withIdentifier: "goToForum", sender: user)
                        
                    case.failure(let error):
                        
                        guard let alert = self?.alertService.alert(message: error.localizedDescription) else { return }
                        self?.present(alert, animated: true)
                    }
                }
            }
            
            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                
                if let mainAppVC = segue.destination as? ForumViewController, let user = sender as? User {
                    
                    mainAppVC.user = user
                }
            }

    @IBAction func pressSignIn(_ sender: Any) {
        self.performSegue(withIdentifier: "gotoSignUp", sender: self)
    
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

