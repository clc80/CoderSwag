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
        Product(description: "Devslopes Logo Graphic Beanie", imageName: "$18", price: "hat01.png"),
        Product(description: "Devslopes Logo Hat Black", imageName: "$22", price: "hat02.png"),
        Product(description: "Devslopes Logo Hat White", imageName: "$22", price: "hat03.png"),
        Product(description: "Devslopes Logo Snapback", imageName: "$20", price: "hat04.png")
    ]
    
    private let hoodies = [
        Product(description: "Devslopes Logo Hoodie Grey", imageName: "$32", price: "hoodie01.png"),
        Product(description: "Devslopes Logo Hoodie Red", imageName: "$32", price: "hoodie02.png"),
        Product(description: "Devslopes Hoodie Grey", imageName: "$32", price: "hoodie03.png"),
        Product(description: "Devslopes Hoodie Black", imageName: "$32", price: "hoodie04.png")
        
    ]
    
    private let shirts = [
        Product(description: "Devslopes Logo Shirt Black", imageName: "$18", price: "shirt01.png"),
        Product(description: "Devslopes Badge Shirt Light Grey", imageName: "$19", price: "shirt02.png"),
        Product(description: "Devslopes Logo Shirt Red", imageName: "$18", price: "shirt03.png"),
        Product(description: "Hustle Delegate Grey", imageName: "$18", price: "shirt04.png"),
        Product(description: "Kickflip Studios Black", imageName: "$18", price: "shirt05.png")
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
