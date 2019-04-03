//
//  HistoryTableViewCell.swift
//  Ticked
//
//  Created by Владимир Гериханов on 22/03/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {
    @IBOutlet weak var awayHis: UILabel!
    @IBOutlet weak var dateHis: UILabel!
    @IBOutlet weak var costHis: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
     

        // Configure the view for the selected state
    }

}
