//
//  BaitoInputViewController.swift
//  Albeit Diary
//
//  Created by 阿久沢莉良 on 2020/06/01.
//  Copyright © 2020 Chai Akuzawa. All rights reserved.
//

import UIKit

class BaitoInputViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var baitoTextField: UITextField!
    @IBOutlet var moneyTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
         
        baitoTextField.delegate = self
        moneyTextField.delegate = self
        
        baitoTextField.keyboardType = .default
        moneyTextField.keyboardType = UIKeyboardType.decimalPad
        
        baitoTextField.text = UserDefaults.standard.object(forKey: "BAITO") as? String
        moneyTextField.text = UserDefaults.standard.object(forKey: "MONEY") as? String
        
    }
     
    let userDefaults = UserDefaults.standard
   
    
       @IBAction func saveData(){
            
        userDefaults.set(baitoTextField.text, forKey:"BAITO")
        userDefaults.set(moneyTextField.text, forKey: "MONEY")
            
            let alert = UIAlertController(
                title: "保存完了",
                message: "バイトの登録が完了しました",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(
                title: "OK",
                style: .default,
                handler: nil
            ))
            present(alert, animated: true, completion: nil)
            baitoTextField.text = ""
            moneyTextField.text = ""
        }

        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
