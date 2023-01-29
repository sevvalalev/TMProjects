//
//  TableViewCell.swift
//  AppStore
//
//  Created by Sevval Alev on 28.01.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var collectionView: UICollectionView!
    
    static let identifier = "tableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionViewDelegate()
        customNibs()

        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .horizontal
        let screenWidth = UIScreen.main.bounds.width
        let itemWidth = (screenWidth - 16) / 1
        layout.itemSize = CGSize(width: itemWidth , height: itemWidth * 0.75)
        collectionView.collectionViewLayout = layout
    }
    
    func collectionViewDelegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func customNibs() {
        let customCellNib: UINib = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView.register(customCellNib, forCellWithReuseIdentifier: "collectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as? CollectionViewCell{
            return cell
        }
        return UICollectionViewCell()
    }
}
