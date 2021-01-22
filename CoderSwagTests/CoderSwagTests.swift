//
//  CoderSwagTests.swift
//  CoderSwagTests
//
//  Created by Claudia Maciel on 1/21/21.
//

import XCTest
@testable import CoderSwag

class CoderSwagTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testGetCategories() throws {
        // Make sure we aren't getting back nil
        XCTAssertNotNil(DataService.instance.getCategories())
    }
    
    func testGetHats() throws {
        let hat = Product(description: "Devslopes Logo Graphic Beanie", imageName: "hat01.png", price: "$18" )
        // Make sure we aren't getting back nil
        XCTAssertNotNil(DataService.instance.getHats())
        
        //Make sure we actually get the right data back
        XCTAssertEqual(DataService.instance.getHats()[0].description, hat.description )
    }
    
    func testGetShirts() throws {
        let shirt = Product(description: "Kickflip Studios Black", imageName: "shirt05.png" , price: "$18" )
        // Make sure we aren't getting back nil
        XCTAssertNotNil(DataService.instance.getShirts())
        
        // Make sure we get the right data back
        XCTAssertEqual(DataService.instance.getShirts()[4].price, shirt.price)
    }
    func testGetHoodies() throws {
        let hoodie = Product(description: "Devslopes Logo Hoodie Grey", imageName: "hoodie01.png" , price: "$32")
        // Make sure we aren't getting back nil
        XCTAssertNotNil(DataService.instance.getHoodies())
        
        //Make sure we actually get the right data back
        XCTAssertEqual(DataService.instance.getHoodies()[0].imageName, hoodie.imageName)
    }
    func testGetDigital() throws {
        // Make sure we aren't getting back nil
        XCTAssertNotNil(DataService.instance.getDigital())
    }

}
