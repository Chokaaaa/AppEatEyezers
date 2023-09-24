//
//  Appetizer.swift
//  AppEatEyezers
//
//  Created by Nursultan Yelemessov on 11/09/2023.
//

import Foundation

struct AppetizerResponse : Decodable {
    let request : [Appetizer]
}

struct Appetizer : Decodable, Identifiable {
    let id : Int
    let name : String
    let description : String
    let price : Double
    let protein : Int
    let calories : Int
    let carbs : Int
    let imageURL : String
}

struct mockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Big Tasty",
                                           description: "King of the burger",
                                           price: 23.23,
                                           protein: 650,
                                           calories: 1200,
                                           carbs: 500,
                                           imageURL: "https://mcdonalds.com.mt/wp-content/uploads/2018/05/BigTasty-Classic.jpg")
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 0001,
                                           name: "Big Tasty",
                                           description: "King of the burger",
                                           price: 23.23,
                                           protein: 650,
                                           calories: 1200,
                                           carbs: 500,
                                           imageURL: "https://mcdonalds.com.mt/wp-content/uploads/2018/05/BigTasty-Classic.jpg")
    
    static let orderItemTwo = Appetizer(id: 0002,
                                           name: "Big Mac",
                                           description: "Big Mac is the burger",
                                           price: 23.23,
                                           protein: 650,
                                           calories: 1200,
                                           carbs: 500,
                                           imageURL: "https://mcdonalds.com.mt/wp-content/uploads/2018/05/BigTasty-Classic.jpg")
    
    static let orderItemThree = Appetizer(id: 0003,
                                           name: "Apple Pie",
                                           description: "King of the burger",
                                           price: 23.23,
                                           protein: 650,
                                           calories: 1200,
                                           carbs: 500,
                                           imageURL: "https://mcdonalds.com.mt/wp-content/uploads/2018/05/BigTasty-Classic.jpg")
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
    
}
