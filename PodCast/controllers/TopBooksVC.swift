//
//  TopBooks.swift
//  PodCast
//
//  Created by mohab on 8/21/22.
//

import UIKit

class TopBooksVC: UIViewController {
    var books:[BookModel]=[
    BookModel(title: "The Guradian Books", auther: "The Guradian", image: "three"),
    BookModel(title: "The Book Review", auther: "The New York Times", image: "four"),
    BookModel(title: "All the Books!", auther: "Book Riot", image: "five"),
    BookModel(title: "Audio Book Club", auther: "Slate Magazine", image: "six"),
    BookModel(title: "The New Yorker: Fiction", auther: "The New Yorker", image: "seven"),
    BookModel(title: "Independently Good Design", auther: "The Guradian", image: "eight"),
    
    ]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(.init(nibName: "TopBooksTableViewCell", bundle: .main), forCellReuseIdentifier: "TopBooksTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    

}
extension TopBooksVC: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopBooksTableViewCell", for: indexPath) as! TopBooksTableViewCell

        cell.bookImage.image = UIImage(named: books[indexPath.row].image)
        cell.bookNameLabel.text = books[indexPath.row].title
        cell.bookAutherLabel.text = books[indexPath.row].auther
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "goToBookChannel", sender: self)
    }
}
