//
//  BaitoInputViewController.swift
//  Albeit Diary
//
//  Created by 阿久沢莉良 on 2020/06/01.
//  Copyright © 2020 Chai Akuzawa. All rights reserved.
//

import UIKit

class BaitoInputViewController: UIViewController {
    
    @IBOutlet var baitoTextField: UITextField!
    @IBOutlet var moneyTextField: UITextField!
    
    var baitoArray: [Dictionary<String, String>] = []
    
    let saveData = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        if saveData.array(forKey: "BAITO") != nil {
            baitoArray = saveData.array(forKey: "BAITO") as! [Dictionary<String,String>]
        }
    }
    
    
       @IBAction func saveBaito(){
            
            let baitoDictionary = ["baito": baitoTextField.text!, "money": moneyTextField.text!]
            
            baitoArray.append(baitoDictionary)
            saveData.set(baitoArray, forKey: "BAITO")
            
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
