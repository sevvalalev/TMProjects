//
//  TableViewCell.swift
//  AppStore
//
//  Created by Sevval Alev on 27.01.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var collectionView: UICollectionView!
    
    static let identifier = "tableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}

extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as? CollectionViewCell {
            cell.defaultLabel.text = "HAPPENING NOW"
            cell.firstLabel.text = "dekodpewkfoew"
            cell.secondLabel.text = "qdıjkeopqfq"
            cell.gameImage.image = UIImage(named: "township")
            return cell
        }
        return UICollectionViewCell()
    }
}


