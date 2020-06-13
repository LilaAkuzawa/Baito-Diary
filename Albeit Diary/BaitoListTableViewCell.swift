//
//  BaitoListTableViewCell.swift
//  Albeit Diary
//
//  Created by 阿久沢莉良 on 2020/06/12.
//  Copyright © 2020 Chai Akuzawa. All rights reserved.
//

import UIKit

class BaitoListTableViewCell: UITableViewCell {
    
    @IBOutlet var baitoLabel: UILabel!
    @IBOutlet var moneyLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
