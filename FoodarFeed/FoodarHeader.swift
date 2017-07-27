//
//  FoodarHeader.swift
//  FoodarFeed
//
//  Created by Erin Woo on 7/27/17.
//  Copyright © 2017 Erin Woo. All rights reserved.
//

import UIKit

class FoodarHeader: UINavigationItem {
    init() {
        super.init(title: "foodar")
        title = "foodar"
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        title = "foodar"
    }
}
