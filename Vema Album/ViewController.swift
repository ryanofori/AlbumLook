//
//  ViewController.swift
//  Vema Album
//
//  Created by Ryan Ofori on 7/5/22.
//

import UIKit

class ViewController: UIViewController {
    
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
        myCollectionview?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        myCollectionview?.backgroundColor = .white
        view.addSubview(myCollectionview ?? UICollectionView())
        
        myCollectionview?.delegate = self
        myCollectionview?.dataSource = self
        
    }


}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        cell.backgroundColor = .blue
        cell.layer.cornerRadius = 25
        return cell /*?? UICollectionViewCell()*/
    }
    
    
}
