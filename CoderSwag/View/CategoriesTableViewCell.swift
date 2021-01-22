//
//  CategoriesTableViewCell.swift
//  CoderSwag
//
//  Created by Claudia Maciel on 1/21/21.
//

import UIKit

class CategoriesTableViewCell: UITableViewCell {
    //MARK: - Properties
    @IBOutlet var CategoriesImage: UIImageView!
    @IBOutlet var CategoriesLabel: UILabel!
    
    func updateViews(category: Category) {
        CategoriesImage.image = UIImage(named: category.imageName)
        CategoriesLabel.text = category.title
    }

}
