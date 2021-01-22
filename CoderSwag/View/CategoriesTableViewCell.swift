//
//  CategoriesTableViewCell.swift
//  CoderSwag
//
//  Created by Claudia Maciel on 1/21/21.
//

import UIKit

class CategoriesTableViewCell: UITableViewCell {
    //MARK: - Properties
    @IBOutlet var CategoriesImage: CategoriesTableViewCell!
    @IBOutlet var CategoriesLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
