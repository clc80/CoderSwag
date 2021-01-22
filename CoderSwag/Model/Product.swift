//
//  Product.swift
//  CoderSwag
//
//  Created by Claudia Maciel on 1/21/21.
//

import Foundation

struct Product {
    private(set) public var description: String
    private(set) public var imageName: String
    private(set) public var price: String
    
    init(description: String, imageName: String, price: String) {
        self.description = description
        self.imageName = imageName
        self.price = price
    }
}
