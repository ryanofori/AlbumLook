//
//  AlbumDetailView.swift
//  Vema Album
//
//  Created by Ryan Ofori on 7/6/22.
//

import Foundation
import UIKit
class AlbumDetailView: UIView {
    
    var artImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var visitButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    init() {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        artImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        artImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        artImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        artImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
//        visitButton
    }
    
}
