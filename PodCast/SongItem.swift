//
//  SongItem.swift
//  PodCast
//
//  Created by mohab on 8/14/22.
//

import UIKit

class SongItem: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var singer: UILabel!
    @IBOutlet weak var time: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
