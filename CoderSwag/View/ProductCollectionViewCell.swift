//
//  ProductCollectionViewCell.swift
//  CoderSwag
//
//  Created by Claudia Maciel on 1/21/21.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    // MARK: - Properties
    @IBOutlet var productImage: UIImageView!
    @IBOutlet var productDescription: UILabel!
    @IBOutlet var productPrice: UILabel!
    
    func updateViews (product: Product) {
        productDescription.text = product.description
        productPrice.text = product.price
        productImage.image = UIImage(named: product.imageName)
    }
}
