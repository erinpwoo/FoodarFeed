//
//  ViewController.swift
//  FoodarFeed
//
//  Created by Erin Woo on 7/23/17.
//  Copyright © 2017 Erin Woo. All rights reserved.
//

import UIKit


class FeedViewController: UITableViewController {

    //repeating array of photos
    var photoList = [UIImage(named: "burger")!,
                    UIImage(named: "pho")!,
                    UIImage(named: "salad")!,
                    UIImage(named: "icecream")!,
                    UIImage(named: "sushirrito")]
    
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
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return photoList.count
    }

    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "CellItem", for: indexPath)
        let photo = cell.viewWithTag(1000) as! UIImageView
        
        cell.imageView?.image = photoList[indexPath.item]
        
        /* if indexPath.row % 5 == 0 {
            photo.image = UIImage(named: "burger")
        } else if indexPath.row % 5 == 1 {
            photo.image = UIImage(named: "pho")
        } else if indexPath.row % 5 == 2 {
            photo.image = UIImage(named: "salad")
        } else if indexPath.row % 5 == 3 {
            photo.image = UIImage(named: "icecream")
        } else if indexPath.row % 5 == 4 {
            photo.image = UIImage(named: "sushirrito")
        } */

        return cell
    }

}




