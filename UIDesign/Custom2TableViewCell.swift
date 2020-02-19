//
//  Custom2TableViewCell.swift
//  UIDesign
//
//  Created by apple on 19/02/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class Custom2TableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameAndID: UILabel!
        @IBOutlet weak var date: UILabel!
        @IBOutlet weak var receiver: UILabel!
        @IBOutlet weak var amount: UILabel!
        @IBOutlet weak var transactionType: UILabel!
        @IBOutlet weak var output: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
