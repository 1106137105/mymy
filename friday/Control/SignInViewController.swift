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
        self.performSegue(withIdentifier: "gotoSignUp", sender: self)
    }

    @IBAction func pressSignIn(_ sender: Any) {
        let login = Login(Account: usernameTextField.text!, Password: passwordTextField.text!)
        AF.request("http://nkust.cf:3000/nkust/Login",
               method: .post,
               parameters: login,
               encoder: JSONParameterEncoder.default).responseJSON { response in
                switch response.result {
                case .success:
                    self.getPost()
                case let .failure(error):
                    print(error)
                }
        }
            
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let mainAppVC = segue.destination as? ForumViewController, let articles = sender as? [Article] {
            mainAppVC.article = articles
        }
    }
    
    func getPost(){
        AF.request("http://nkust.cf:3000/nkust/Posts",
        method: .get).responseJSON { response in
            switch response.result {
                case .success(let value):
                    let json = JSON(value)
                    let list = json.arrayValue
                    print(list)
                    var articles = [Article]()
                    for articleJson in list {
                    let article = Article(articleJson)
                    articles.append(article)
                    }
                self.performSegue(withIdentifier: "goToForum", sender: articles)
                case let .failure(error):
                    print(error)
                }
            
        }
}

}
