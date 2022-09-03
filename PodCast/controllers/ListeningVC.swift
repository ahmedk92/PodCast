//
//  ListeningVC.swift
//  PodCast
//
//  Created by mohab on 9/2/22.
//

import UIKit

class ListeningVC: UIViewController {
    
    var bookTitle: String?
    var bookAuther: String?
    var imageName: String?

    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookAutherLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bookTitleLabel.text = bookTitle
        bookAutherLabel.text = bookAuther
    }
    

}
