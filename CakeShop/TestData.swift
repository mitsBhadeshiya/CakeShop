//
//  TestData.swift
//  CakeShop
//
//  Created by Ubrain_iOS2 on 19/03/20.
//  Copyright © 2020 Ubrain_iOS2. All rights reserved.
//

import Foundation

struct Status: Identifiable {
    var id:Int
    var img:String
    var name:String
}

struct SetTestData {
    
    static func posts() -> [Status] {
        
        let post1 = Status(id: 1, img: "1", name: "Steve Jobs")
        let post2 = Status(id: 2, img: "2", name: "Steve Jobs")
        let post3 = Status(id: 3, img: "1", name: "Steve Jobs")
        let post4 = Status(id: 4, img: "2", name: "Steve Jobs")
        let post5 = Status(id: 5, img: "1", name: "Steve Jobs")
        
        return [post1,post2,post3,post4,post5]
    }
}

struct Muffins: Identifiable {
    var id:Int
    var img:String
    var name:String
    var des:String
    var price:String
}

struct SetMuffinData {
    
    static func posts() -> [Muffins] {
        
        let post1 = Muffins(id: 1, img: "11", name: "Regular Muffin Cup", des: "Lorem ipsum dolor sit amet, consecte adipiscing elit…", price: "£3.25")
        let post2 = Muffins(id: 2, img: "3", name: "Regular Muffin Cup", des: "Lorem ipsum dolor sit amet, consecte adipiscing elit…", price: "£3.25")
        let post3 = Muffins(id: 3, img: "11", name: "Regular Muffin Cup", des: "Lorem ipsum dolor sit amet, consecte adipiscing elit…", price: "£3.25")
        let post4 = Muffins(id: 4, img: "3", name: "Regular Muffin Cup", des: "Lorem ipsum dolor sit amet, consecte adipiscing elit…", price: "£3.25")
        let post5 = Muffins(id: 5, img: "11", name: "Regular Muffin Cup", des: "Lorem ipsum dolor sit amet, consecte adipiscing elit…", price: "£3.25")
        let post6 = Muffins(id: 6, img: "3", name: "Regular Muffin Cup", des: "Lorem ipsum dolor sit amet, consecte adipiscing elit…", price: "£3.25")
        let post7 = Muffins(id: 7, img: "11", name: "Regular Muffin Cup", des: "Lorem ipsum dolor sit amet, consecte adipiscing elit…", price: "£3.25")
        let post8 = Muffins(id: 8, img: "3", name: "Regular Muffin Cup", des: "Lorem ipsum dolor sit amet, consecte adipiscing elit…", price: "£3.25")
        let post9 = Muffins(id: 9, img: "11", name: "Regular Muffin Cup", des: "Lorem ipsum dolor sit amet, consecte adipiscing elit…", price: "£3.25")
        let post10 = Muffins(id: 10, img: "3", name: "Regular Muffin Cup", des: "Lorem ipsum dolor sit amet, consecte adipiscing elit…", price: "£3.25")
       
        return [post1,post2,post3,post4,post5,post6,post7,post8,post9,post10]
    }
}


