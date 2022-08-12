//
//  CustomCollectionViewCell.swift
//  Vema Album
//
//  Created by Ryan Ofori on 7/5/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    var albumArt: UIImageView?
    var artistName: UILabel?
    var songName: UILabel?
    override init(frame: CGRect) {
        super.init(frame: frame)
        albumArt = UIImageView(frame: self.bounds)
        albumArt?.backgroundColor = .orange
        contentView.addSubview(albumArt!)
        artistName = UILabel(frame: CGRect(x: 12, y: 20, width: self.bounds.width - 20, height: 19))
        artistName?.textColor = .green
        artistName?.text = "eefasuhcfsduivhirephvu"
        contentView.addSubview(artistName!)
        songName = UILabel(frame: CGRect(x: 12, y: 40, width: self.bounds.width - 20, height: 14))
        songName?.textColor = .red
        songName?.backgroundColor = .cyan
        songName?.text = "eefasuhcfsduivhirephvu"
        contentView.addSubview(songName!)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
