//
//  TrackModel.swift
//  MusicPlayer
//
//  Created by Maheen on 17/05/2023.
//

import Foundation

class TrackModel{
    let img : String
    let music : String
    let artist : String
    let SongFile : String
    
    init(img: String, music: String, artist: String, SongFile: String) {
        self.img = img
        self.music = music
        self.artist = artist
        self.SongFile = SongFile
    }
}
