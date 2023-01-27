//
//  CollectionViewCell.swift
//  AppStore
//
//  Created by Sevval Alev on 27.01.2023.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet var defaultLabel: UILabel!
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var gameImage: UIImageView!
    

    static let identifier = "collectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
