//
//  CustomCell.swift
//  tableView
//
//  Created by Clint Jellesed on 6/2/16.
//  Copyright © 2016 Clint Jellesed. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
