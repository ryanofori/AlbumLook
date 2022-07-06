//
//  AlbumDetailVC.swift
//  Vema Album
//
//  Created by Ryan Ofori on 7/5/22.
//

import UIKit

class AlbumDetailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
//        self.navigationController?.navigationBar.tintColor = .clear
        self.navigationController?.navigationBar.tintColor = .brown
        self.navigationController?.navigationBar.backgroundColor = .clear
        
        let imageName = "yourImage.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        view.addSubview(imageView)
        // Do any additional setup after loading the view.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func naturalDateConvertor(date: String) {
        
    }

}
