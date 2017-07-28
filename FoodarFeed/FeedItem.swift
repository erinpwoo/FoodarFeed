//
//  FeedItem.swift
//  FoodarFeed
//
//  Created by Erin Woo on 7/27/17.
//  Copyright © 2017 Erin Woo. All rights reserved.
//

import Foundation
import UIKit

class FeedItem {
    var photo = UIImage()
    let itemName: String
    let restaurantName: String
    var craves = Int()
    
    init(photo: UIImage, itemName: String, restaurantName:String, craves: Int) {
        self.photo = photo
        self.itemName = itemName
        self.restaurantName = restaurantName
        self.craves = craves
    }
    
    init() {
        self.itemName = "Item Name"
        self.restaurantName = "Restaurant Name"
        self.craves = 0
    }
    
    
}
