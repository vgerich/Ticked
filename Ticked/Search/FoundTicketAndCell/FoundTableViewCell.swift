//
//  FoundTableViewCell.swift
//  Ticked
//
//  Created by Владимир Гериханов on 22/03/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class FoundTableViewCell: UITableViewCell {
    @IBOutlet weak var away: UILabel!
    @IBOutlet weak var dateTo: UILabel!
    @IBOutlet weak var cost: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
