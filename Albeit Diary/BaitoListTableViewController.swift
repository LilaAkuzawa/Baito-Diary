//
//  BaitoListTableViewController.swift
//  Albeit Diary
//
//  Created by 阿久沢莉良 on 2020/06/01.
//  Copyright © 2020 Chai Akuzawa. All rights reserved.
//

import UIKit

class BaitoListTableViewController: UITableViewController {
    
   var baitoArray: [Dictionary<String,Int>] = []
   
   let saveData = UserDefaults.standard

   override func viewDidLoad() {
       super.viewDidLoad()
       tableView.rowHeight = 70
   }
       // Do any additional setup after loading the view.
   override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
    
    if let _ = UserDefaults.standard.object(forKey: "BAITO") as? String{
    
        baitoLabel.text = (UserDefaults.standard.object(forKey: "BAITO") as! String)
    }
    if let _ = UserDefaults.standard.object(forKey: "MONEY") as? Int{
    
        moneyLabel.text = (UserDefaults.standard.object(forKey: "MONEY") as! Int)
    }
   self.tableView.reloadData()
   }
   
   override func numberOfSections(in tableView: UITableView) -> Int {
       return 1
   }
   

   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return baitoArray.count
   }
   
   
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BaitoListTableViewCell
       
       let nowIndexPathDictionary = baitoArray[indexPath.row]
       
       cell.baitoLabel.text = nowIndexPathDictionary["baito"]
       cell.moneyLabel.text = nowIndexPathDictionary["money"]
       
       return cell
   }
}
