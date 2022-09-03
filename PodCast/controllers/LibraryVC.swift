//
//  LibraryVC.swift
//  PodCast
//
//  Created by mohab on 8/18/22.
//

import UIKit

class LibraryVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var newView: UIView!
    @IBOutlet weak var playImage: UIImageView!
    @IBOutlet weak var playNameLabel: UILabel!
    @IBOutlet weak var playeAutherLabel: UILabel!
    var songs: [SongModel]=[
    SongModel(title: "Independently Good Design", singer: "Wireframe", time: "21:00"),
    SongModel(title: "Whiteout", singer: "Blackout", time: "22:00"),
    SongModel(title: "The Life Of Thomas Edison", singer: "The Book Review", time: "22:00"),
    SongModel(title: "Bob Newhart", singer: "Conan O'Brien needs a Friend", time: "22:00"),
    ]
    
    var books:[BookModel]=[
    BookModel(title: "The Guradian Books", auther: "The Guradian", image: "three"),
    BookModel(title: "The Book Review", auther: "The New York Times", image: "four"),
    BookModel(title: "All the Books!", auther: "Book Riot", image: "five"),
    BookModel(title: "Audio Book Club", auther: "Slate Magazine", image: "six"),
    BookModel(title: "The New Yorker: Fiction", auther: "The New Yorker", image: "seven"),
    BookModel(title: "Independently Good Design", auther: "The Guradian", image: "eight"),
    
    ]
    
    var selectedIndex: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(.init(nibName: "LibrarySongTableViewCell", bundle: .main), forCellReuseIdentifier: "LibrarySongTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        collectionView.dataSource = self
        view.sendSubviewToBack(newView)
    }
    

    @IBAction func podCastViewAllBtn(_ sender: UIButton) {
    }
    
    @IBAction func playlistViewAllBtn(_ sender: UIButton) {
    }
    @IBAction func didTapView(_ sender: UITapGestureRecognizer) {
        self.performSegue(withIdentifier: "goToListening", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToListening"{
            let destinationVC = segue.destination as! ListeningVC
            destinationVC.bookTitle = songs[selectedIndex ?? 0].title
            destinationVC.bookAuther = songs[selectedIndex ?? 0].singer
        }
    }
    
}
extension LibraryVC: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LibrarySongTableViewCell", for: indexPath) as! LibrarySongTableViewCell
        cell.songTitle.text = songs[indexPath.row].title
        cell.singer.text = songs[indexPath.row].singer
        cell.time.text = songs[indexPath.row].time
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        playNameLabel.text = songs[indexPath.row].title
        playeAutherLabel.text = songs[indexPath.row].singer
        view.bringSubviewToFront(newView)
    }
}

extension LibraryVC: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return books.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! MyCollectionViewCell
        
        cell.image.image = UIImage(named: books[indexPath.row].image)
        return cell
    }


}
