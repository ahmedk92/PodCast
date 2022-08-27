//
//  PlaylistVC.swift
//  PodCast
//
//  Created by mohab on 8/14/22.
//

import UIKit

class PlaylistVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var songs: [SongModel]=[
    SongModel(title: "aaa", singer: "bbb", time: "22:00"),
    SongModel(title: "moas", singer: "mosalah", time: "22:00"),
    SongModel(title: "bbbb", singer: "fff", time: "22:00"),
    SongModel(title: "fgfg", singer: "fgf", time: "22:00"),
    SongModel(title: "fgfgffg", singer: "bbb", time: "22:00"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(.init(nibName: "LibrarySongTableViewCell", bundle: .main), forCellReuseIdentifier: "LibrarySongTableViewCell")
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}

extension PlaylistVC: UITableViewDataSource{
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
   
    
}
