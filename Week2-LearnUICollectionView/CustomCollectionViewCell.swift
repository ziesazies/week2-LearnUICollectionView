//
//  CustomCollectionViewCell.swift
//  Week2-LearnUICollectionView
//
//  Created by Alief Ahmad Azies on 24/02/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "cell1"
    
    @IBOutlet weak var imageCollection: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup() {
        imageCollection.contentMode = .scaleAspectFill
        layer.cornerRadius = 8
        layer.borderWidth = 0.2
        layer.borderColor = UIColor.lightGray.cgColor
    }

}
