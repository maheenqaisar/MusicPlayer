//
//  TrackList.swift
//  MusicPlayer
//
//  Created by Maheen on 17/05/2023.
//

import Foundation

class TrackList{
    var MyMusicList = [TrackModel]()
    init(){
        
        // MARK: "I have just added one song to the Music folder you can download and convert the song to MP3 yourself and place it in the Music folder.
        
        MyMusicList.append(TrackModel(img: "Pic1", music: "We Don't Talk Anymore", artist: "Charlie Puth", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic2", music: "Montero", artist: "Lil Nas X", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic3", music: "Levitating", artist: "Dua Lipa", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic4", music: "Leave The Door Open", artist: "Silk Sonic", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic5", music: "Kiss Me More", artist: "Doja Cat ft. SZA", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic6", music: "Drivers License", artist: "Olivia Rodrigo", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic7", music: "Peaches", artist: "Justin Bieber ft. Daniel Caesar, Giveon", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic8", music: "Blinding Lights", artist: "The Weeknd", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic9", music: "Bad Guy", artist: "Billie Eilish", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic10", music: "Good 4 U", artist: "Olivia Rodrigo", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic11", music: "Positions", artist: "Ariana Grande", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic12", music: "Stay", artist: "The Kid LAROI & Justin Bieber", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic13", music: "Watermelon Sugar", artist: "Harry Styles", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic14", music: "Save Your Tears", artist: "The Weeknd & Ariana Grande", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic15", music: "Leave Before You Love Me", artist: "Marshmello & Jonas Brothers", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic16", music: "Deja Vu", artist: "Olivia Rodrigo", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic17", music: "Stupid Love", artist: "Lady Gaga", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic18", music: "Shallow", artist: "Lady Gaga & Bradley Cooper", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic19", music: "Love On Top", artist: "Beyonce", SongFile: "GoingUp"))
        MyMusicList.append(TrackModel(img: "Pic20", music: "Roar", artist: "Katy Perry", SongFile: "GoingUp"))

    }
}
