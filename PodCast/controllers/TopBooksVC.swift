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
        tableView.dataSource = self
    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension TopBooksVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath) as! TopBooksTableViewCell

        cell.bookImage.image = UIImage(named: books[indexPath.row].image)
        cell.bookName.text = books[indexPath.row].title
        cell.bookAuther.text = books[indexPath.row].auther
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
}
