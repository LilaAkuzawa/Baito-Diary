//
//  MenuViewController.swift
//  Albeit Diary
//
//  Created by 阿久沢莉良 on 2020/06/06.
//  Copyright © 2020 Chai Akuzawa. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    
    override func viewDidAppear(_ animated: Bool) {
    
        super.viewDidAppear(animated)
        let menuPos = self.menuView.layer.position
        self.menuView.layer.position.x = -self.menuView.frame.width
    
    UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {self.menuView.layer.position.x = menuPos.x},
    completion: {bool in
    
    })
        // Do any additional setup after loading the view.
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        for touch in touches{
            if touch.view?.tag == 1{
                UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
                    self.menuView.layer.position.x = -self.menuView.frame.width},
                               completion: {bool in self.dismiss(animated: true,completion: nil)
                                
                }
                )
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

}
