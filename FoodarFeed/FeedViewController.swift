//
//  ViewController.swift
//  FoodarFeed
//
//  Created by Erin Woo on 7/23/17.
//  Copyright © 2017 Erin Woo. All rights reserved.
//

import UIKit


class FeedViewController: UITableViewController {

    
    @IBOutlet weak var foodarHeader: UILabel!
    
    
    //Placeholder array of photos
    var photoList = [UIImage(named: "burger")!,
                    UIImage(named: "pho")!,
                    UIImage(named: "salad")!,
                    UIImage(named: "icecream")!,
                    UIImage(named: "sushirrito")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let navigationBar = self.navigationController?.navigationBar {
            //displays label as nav bar header
            navigationBar.addSubview(foodarHeader)

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Determines number of rows
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return photoList.count
    }

    
    // Retrieves images from array and displays them in row cells
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "CellItem", for: indexPath)
        
        cell.imageView?.image = photoList[indexPath.item]
        
        return cell
    }

}




