//
//  VideoTableViewCell.swift
//  TabBarItem
//
//  Created by apple on 2/27/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    @IBOutlet weak var videocell: PlayerViewClass!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
