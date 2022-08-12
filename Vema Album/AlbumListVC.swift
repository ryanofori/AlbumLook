//
//  ViewController.swift
//  Vema Album
//
//  Created by Ryan Ofori on 7/5/22.
//

import UIKit

class AlbumListVC: UIViewController {
    
    var myCollectionview: UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Enter Title here"
        navigationController?.navigationBar.prefersLargeTitles = true
        UINavigationBar.appearance().isTranslucent = false
        navigationController?.navigationBar.backgroundColor = .systemBackground
        view.backgroundColor = .white
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 12, right: 16)
        layout.itemSize = CGSize(width: 179, height: 179)
        
        
        myCollectionview = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionview?.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        myCollectionview?.backgroundColor = .white
        view.addSubview(myCollectionview ?? UICollectionView())
        //collectionView
        myCollectionview?.delegate = self
        myCollectionview?.dataSource = self
        
        getJson()
    }
    
    
    func getJson() {
        let top100 = "https://rss.applemarketingtools.com/api/v2/us/music/most-played/10/albums.json"
        guard let url = URL(string: top100) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request, completionHandler: {data, response, error in
            guard let data = data else { return }
            if let jsonString = String(data: data, encoding: .utf8){
                print(jsonString)
            }
        })
        task.resume()
    }

}

extension AlbumListVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You tapped \(indexPath.row)")
        //self.navigationController?.pushViewController(AlbumDetailVC(), animated: true)
//        let nextViewController = self.instantiateViewController(withIdentifier: "AlbumDetailVC") as! AlbumDetailVC
//        self.present(nextViewController, animated:true, completion:nil)
    }
}

extension AlbumListVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        cell.backgroundColor = .blue
        cell.layer.cornerRadius = 20
        return cell /*?? UICollectionViewCell()*/
    }
    
    
}

