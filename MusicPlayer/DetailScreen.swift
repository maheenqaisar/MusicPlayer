//
//  DetailScreen.swift
//  MusicPlayer
//
//  Created by Maheen on 17/05/2023.
//

import UIKit
import AVFoundation

class DetailScreen: UIViewController {
    
    @IBOutlet weak var CoverImg: UIImageView!
    @IBOutlet weak var Artists: UILabel!
    @IBOutlet weak var SongTitle: UILabel!
    @IBOutlet weak var playSong: UIButton!
    @IBOutlet weak var Slider: UISlider!
    
    var audioPlayer : AVAudioPlayer?
    let MyMusicList = TrackList()
    
    var img : String = ""
    var MyMusicTitle : String = ""
    var MyMusicArtist : String = ""
    var SongFile : String = ""
    var SongNum : Int = 0
    var count : Int = 0
    var CheckPlayBtn : Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Artists.text = MyMusicArtist
        SongTitle.text = MyMusicTitle
        CoverImg.image = UIImage(named: img)
        Slider.setThumbImage(UIImage(named: "Circle"), for: .normal)
        playMusic(MusicFile: SongFile)
        count = SongNum

    }
    
    @IBAction func nextSong(_ sender: Any) {
        count = count + 1
        if count<14{
            nextMusic(mNo: count)
        } else {
            count = 0
            nextMusic(mNo: count)
        }
    }
    
    @IBAction func playButton(_ sender: Any) {
        if audioPlayer!.isPlaying{
            audioPlayer?.pause()
            playSong.setImage(UIImage(named: "Play"), for: .normal)
        } else {
            audioPlayer?.play()
            playSong.setImage(UIImage(named: "Pause"), for: .normal)
        }
    }
    
    func playMusic(MusicFile : String){
        let fileUrl = Bundle.main.url(forResource: MusicFile, withExtension: "mp3")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: fileUrl!)
        } catch {
            print(error)
        }
        audioPlayer?.play()
    }
    
    @IBAction func previousButton(_ sender: Any) {
        count = count - 1
        if count<0{
            count = 13
            previousMusic(mNo: count)
        } else {
            previousMusic(mNo: count)
        }
    }
    
    func goToMain(){
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let NextVC = storyBoard.instantiateViewController(withIdentifier: "HomeScreen") as! HomeScreen
        self.present(NextVC, animated:true, completion:nil)
    }
    
    func nextMusic(mNo : Int){
        Artists.text = MyMusicList.MyMusicList[mNo].artist
        SongTitle.text = MyMusicList.MyMusicList[mNo].music
        CoverImg.image = UIImage(named: MyMusicList.MyMusicList[mNo].img)
        playMusic(MusicFile: MyMusicList.MyMusicList[mNo].SongFile)
    }
    
    func previousMusic(mNo : Int){
        Artists.text = MyMusicList.MyMusicList[mNo].artist
        SongTitle.text = MyMusicList.MyMusicList[mNo].music
        CoverImg.image = UIImage(named: MyMusicList.MyMusicList[mNo].img)
        playMusic(MusicFile: MyMusicList.MyMusicList[mNo].SongFile)
    }

}

