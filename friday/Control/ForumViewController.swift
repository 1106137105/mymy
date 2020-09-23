//
//  ForumViewController.swift
//  friday
//
//  Created by 李孟倫 on 2020/9/4.
//  Copyright © 2020 溫家豪. All rights reserved.
//

import UIKit

class ForumViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var tableView: UITableView!
    var article: [Article]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        self.navigationItem.setHidesBackButton(true, animated: true)
        let userUid = UserDefaults.standard.getUserId()
        print(userUid)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as? PostDetailViewController
        let indexPath = self.tableView.indexPathForSelectedRow
        
        controller?.titleText = article?[indexPath!.row].Title
        controller?.contentText  = article?[indexPath!.row].Content
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("you tap me")
        print(article?[indexPath.row].Title)
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PostTableViewCell
        else{
            return UITableViewCell()
        }
        
        cell.titleLable.text = article?[indexPath.row].Title
        cell.contentLable.text = article?[indexPath.row].Content
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return article!.count
    }

}


