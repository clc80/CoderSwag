//
//  DataService.swift
//  CoderSwag
//
//  Created by Claudia Maciel on 1/21/21.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png"),
    ]
    
    private let hats = [
        Product(description: "Devslopes Logo Graphic Beanie", imageName: "hat01.png", price:"$18"),
        Product(description: "Devslopes Logo Hat Black", imageName: "hat02.png", price:"$22"),
        Product(description: "Devslopes Logo Hat White", imageName: "hat03.png", price:"$22"),
        Product(description: "Devslopes Logo Snapback", imageName: "hat04.png", price:"$20")
    ]
    
    private let hoodies = [
        Product(description: "Devslopes Logo Hoodie Grey", imageName: "hoodie01.png", price:"$32"),
        Product(description: "Devslopes Logo Hoodie Red", imageName: "hoodie02.png", price:"$32"),
        Product(description: "Devslopes Hoodie Grey", imageName: "hoodie03.png", price:"$32"),
        Product(description: "Devslopes Hoodie Black", imageName: "hoodie04.png", price:"$32")
        
    ]
    
    private let shirts = [
        Product(description: "Devslopes Logo Shirt Black", imageName: "shirt01.png", price:"$18"),
        Product(description: "Devslopes Badge Shirt Light Grey", imageName: "shirt02.png", price:"$19"),
        Product(description: "Devslopes Logo Shirt Red", imageName: "shirt03.png", price:"$18"),
        Product(description: "Hustle Delegate Grey", imageName: "shirt04.png", price:"$18"),
        Product(description: "Kickflip Studios Black", imageName: "shirt05.png", price:"$18")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "HATS":
            return getHats()
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigital()
        default:
            return getShirts()
        }
        
    }
    
    func getHats() -> [Product] {
        return hats
    }
    func getShirts() -> [Product] {
        return shirts
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getDigital() -> [Product] {
        return digitalGoods
    }
    
}
