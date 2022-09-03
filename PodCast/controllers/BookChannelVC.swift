//
//  BookChannelVC.swift
//  PodCast
//
//  Created by mohab on 9/2/22.
//

import UIKit

class BookChannelVC: UIViewController {

    var bookList: [BookChannelItemModel] = [
    BookChannelItemModel(date: "Nov 26, 2019", title: "10 best of Books 2029", describtion:"""
On a special episode of the podcast, taped live, editors from The New …
""",duration: "1:14:32"),
    BookChannelItemModel(date: "NOV 22, 2019", title: "The Authorized Life of the Iron Lady", describtion:"""
Charles Moore discusses the final volume of his biography of Margaret …
""",duration: "1:09:21"),
    BookChannelItemModel(date: "Nov 26, 2019", title: "10 best of Books 2029", describtion:"""
On a special episode of the podcast, taped live, editors from The New …
""",duration: "1:14:32")
    ]
    @IBOutlet weak var tabelView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tabelView.register(.init(nibName: "BookChannelItemTableViewCell", bundle: .main), forCellReuseIdentifier: "BookChannelItemTableViewCell")
        tabelView.dataSource = self
        tabelView.delegate = self
    }
    
}

extension BookChannelVC: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookChannelItemTableViewCell", for: indexPath) as! BookChannelItemTableViewCell
        
        cell.dateLabel.text = bookList[indexPath.row].date
        cell.titleLabel.text = bookList[indexPath.row].title
        cell.describtionLabel.text = bookList[indexPath.row].describtion
        cell.durationLabel.text = bookList[indexPath.row].duration

        return cell
    }
    
    
}
