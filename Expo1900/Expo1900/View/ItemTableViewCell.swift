//
//  ItemTableViewCell.swift
//  Expo1900
//
//  Created by Erick, 비모 on 2023/06/27.
//

import UIKit

final class ItemTableViewCell: UITableViewCell {
    static let id = "itemTableViewCellID"
    
    @IBOutlet private weak var itemImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var shortDesctionLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        itemImageView.image = nil
        nameLabel.text = nil
        shortDesctionLabel.text = nil
    }
    
    func configure(_ item: Item) {
        itemImageView.image = UIImage(named: item.imageName)
        nameLabel.text = item.name
        shortDesctionLabel.text = item.shortDescription
    }
}
