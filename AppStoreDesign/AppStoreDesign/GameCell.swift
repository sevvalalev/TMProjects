//
//  GameCell.swift
//  AppStoreDesign
//
//  Created by Sevval Alev on 26.01.2023.
//

import UIKit

class GameCell: UITableViewCell {

    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var thirdLabel: UILabel!
    @IBOutlet var gameImageView: UIImageView!
    
    
    static let identifier = "gameCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureUI()
        
    }
    
    func configureUI() {
        firstLabel.text = "Happening now"
        secondLabel.text = "Expedition to Tortuga"
        thirdLabel.text = "Join the expedition"
        gameImageView.image = UIImage(named: "township")
    }
    
}
