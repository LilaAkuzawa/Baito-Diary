//
//  ViewController.swift
//  Albeit Diary
//
//  Created by 阿久沢莉良 on 2020/05/23.
//  Copyright © 2020 Chai Akuzawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var inputButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        inputButton.layer.cornerRadius = 10
        inputButton.layer.shadowRadius = 7
        inputButton.layer.shadowOpacity = 1
        inputButton.layer.shadowColor = UIColor.lightGray.cgColor
        inputButton.layer.shadowOffset = CGSize(width: 2, height: 2 )
        
        registerButton.layer.cornerRadius = 15
        registerButton.layer.shadowRadius = 7
        registerButton.layer.shadowOpacity = 1
        registerButton.layer.shadowColor = UIColor.lightGray.cgColor
        registerButton.layer.shadowOffset = CGSize(width: 2, height: 2 )
        
        label1.layer.backgroundColor = UIColor.white.cgColor
        label1.layer.cornerRadius = 10
        label1.layer.shadowRadius = 10
        label1.layer.shadowOpacity = 1
        label1.layer.shadowColor = UIColor.lightGray.cgColor
        label1.layer.shadowOffset = CGSize(width: 2,height: 2)
        

    }
    
    @IBAction func input(_ sender: UIButton) {
    }
    
    @IBAction func register(_ sender: UIButton) {
    }
    
    @IBAction func back (sender: UIStoryboardSegue){
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let _ = UserDefaults.standard.object(forKey: "SAVING") as? Int {
            //labelに表示

            label1.text = String(UserDefaults.standard.object(forKey: "SAVING") as! Int)
            
        }else{
            
            let userDefaults = UserDefaults.standard
            
            userDefaults.set(0, forKey:"SAVING")
            
            label1.text = "0"
        }
    }
    
    
    
    @IBAction func inputButtonTapped(_sender: Any){
        
        var alertTextField: UITextField?
        
        let saveData = UserDefaults.standard
        
        if saveData.object(forKey: "MONEY") == nil{
            
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
            
        }else{
            
            let alert = UIAlertController(
                title: "入力",
                message: "勤務時間を入力してください",
                preferredStyle: UIAlertController.Style.alert)
            
            alert.addTextField(
                configurationHandler: {(textField: UITextField!)in
                    alertTextField = textField
                    textField.keyboardType = UIKeyboardType.decimalPad
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
                            let nText:Int = Int(text)!
                            //入力した数字をInt型にする
                            let saveData = UserDefaults.standard
                            let money:String = saveData.object(forKey: "MONEY") as! String
                            // 登録してある数字をStringで取り出す
                            let nMoney:Int = Int(money)!
                            //登録してある数字をInt型に
                            var saving:Int = saveData.object(forKey: "SAVING") as! Int
                            
                            saving = saving + nMoney*nText
                            //計算
                            self.label1.text = String(saving)
                            
                            let userDefaults = UserDefaults.standard
                            
                            userDefaults.set(saving, forKey:"SAVING")
                        }
                }
            )
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
}
