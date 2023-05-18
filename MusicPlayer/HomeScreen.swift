//
//  HomeScreen.swift
//  MusicPlayer
//
//  Created by Maheen on 17/05/2023.
//

import UIKit

class HomeScreen: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var MusicTable: UITableView!
    
    let MyMusicList = TrackList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MyMusicList.MyMusicList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MusicTable.dequeueReusableCell(withIdentifier: "MusicCell", for: indexPath) as! MyMusicListCell
        cell.Cover.image = UIImage(named: MyMusicList.MyMusicList[indexPath.row].img)
        cell.MusicName.text =   MyMusicList.MyMusicList[indexPath.row].music
        cell.ArtistName.text = MyMusicList.MyMusicList[indexPath.row].artist
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let NextPage = storyboard?.instantiateViewController(withIdentifier: "DetailScreen") as! DetailScreen
        NextPage.MyMusicTitle = MyMusicList.MyMusicList[indexPath.row].music
        NextPage.MyMusicArtist = MyMusicList.MyMusicList[indexPath.row].artist
        NextPage.img = MyMusicList.MyMusicList[indexPath.row].img
        NextPage.SongFile = MyMusicList.MyMusicList[indexPath.row].SongFile
        NextPage.SongNum = indexPath.row

        // Set the artist name as the title
        NextPage.title = MyMusicList.MyMusicList[indexPath.row].artist

        if let navigationController = navigationController {
            navigationController.pushViewController(NextPage, animated: true)
        }
    }
    
}
