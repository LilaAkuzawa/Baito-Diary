//
//  ViewController.swift
//  Albeit Diary
//
//  Created by 阿久沢莉良 on 2020/05/23.
//  Copyright © 2020 Chai Akuzawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var number: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func input(_ sender: UIButton) {
    }
    
    @IBAction func register(_ sender: UIButton) {
    }
    
    @IBAction func back (sender: UIStoryboardSegue){
        
    }
    
  
    @IBAction func inputButtonTapped(_sender: Any){
        var alertTextField: UITextField?
        
        let alert = UIAlertController(
            title: "入力",
            message: "勤務時間を入力してください",
            preferredStyle: UIAlertController.Style.alert)
        alert.addTextField(
            configurationHandler: {(textField: UITextField!)in
                alertTextField = textField
                textField.text = self.number.text
                
        })
        alert.addAction(
        UIAlertAction(
            title: "Cancel",
            style: UIAlertAction.Style.cancel,
            handler: nil))
        alert.addAction(
        UIAlertAction(
            title: "OK",
            style: UIAlertAction.Style.default){ _ in
                if let text = alertTextField?.text {
                    self.number.text = text
        }
    }
)
        
        let saveData = UserDefaults.standard
        if saveData.array(forKey: "BAITO") != nil{
            if saveData.array(forKey: "BAITO")!.count > 0 {
                
            }
        }else{
            let alert = UIAlertController(
                title: "登録されたバイトがありません",
                message: "まずは「バイトを登録」をタップしてバイトの時給を登録してください",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(
                title: "OK",
                style: .default,
                handler: nil
            ))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
}

