//
//  ViewController.swift
//  FoodarFeed
//
//  Created by Erin Woo on 7/23/17.
//  Copyright © 2017 Erin Woo. All rights reserved.
//

import UIKit

class FeedViewController: UITableViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationController?.navigationBar.barTintColor = UIColor.white
        let swiftColor = UIColor(red: 153/255, green: 0, blue: 51/255, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: swiftColor]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}




