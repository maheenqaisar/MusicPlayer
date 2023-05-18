//
//  MyMusicListCell.swift
//  MusicPlayer
//
//  Created by Maheen on 17/05/2023.
//

import UIKit

class MyMusicListCell: UITableViewCell {

    @IBOutlet weak var ArtistName: UILabel!
    @IBOutlet weak var MusicName: UILabel!
    @IBOutlet weak var Cover: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
