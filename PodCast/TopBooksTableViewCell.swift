//
//  TopBooksTableViewCell.swift
//  PodCast
//
//  Created by mohab on 8/21/22.
//

import UIKit

class TopBooksTableViewCell: UITableViewCell {

    @IBOutlet weak var markButton: UIImageView!
    @IBOutlet weak var bookAuther: UILabel!
    @IBOutlet weak var bookName: UILabel!
    @IBOutlet weak var bookImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
