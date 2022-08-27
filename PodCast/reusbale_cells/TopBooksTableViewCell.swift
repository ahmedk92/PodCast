//
//  BooksTableViewCell.swift
//  PodCast
//
//  Created by mohab on 8/27/22.
//

import UIKit

class TopBooksTableViewCell: UITableViewCell {
    @IBOutlet weak var bookImage: UIImageView!
    
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var bookAutherLabel: UILabel!
    @IBOutlet weak var markImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
