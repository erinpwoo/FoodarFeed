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
    var photoList: Array<FeedItem> =  Array()
    
    
    // manually initializing FeedItem objects *for testing purposes*
    let burger = FeedItem(photo: (UIImage(named: "burger"))!, itemName: "burger", restaurantName: "super duper", craves: 219)
    let pho = FeedItem(photo: (UIImage(named: "pho"))!, itemName: "veggie pho", restaurantName: "turtle tower", craves: 416)
    let icecream = FeedItem(photo: (UIImage(named: "icecream"))!, itemName: "ice cream", restaurantName: "joe's ice cream", craves: 523)
    let salad = FeedItem(photo: (UIImage(named: "salad"))!, itemName: "salad", restaurantName: "crepevine", craves: 416)
    let sushirrito = FeedItem(photo: (UIImage(named: "sushirrito"))!, itemName: " og sushirrito", restaurantName: "sushirrito downtown sf", craves: 863)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let navigationBar = self.navigationController?.navigationBar {
            //displays label as nav bar header
            navigationBar.addSubview(foodarHeader)

        }
        
        addPhotos()
    }
    
    // function to create and append  new post items to the array of existing post objects
    func createPost(photo: UIImage, itemName: String, restaurantName:String, craves: Int)
    {
        /* for customizing later...
         
        let newItem = FeedItem(photo: photo, itemName: itemName, restaurantName: restaurantName, craves: craves)
         
        photoList.append(newItem)
        */
    }
    
    // can use addPhotos() method when figuring out how to manually refresh photos later? .append MUST be used inside of a method and called upon in viewDidLoad()
    func addPhotos() {
        photoList.append(burger)
        photoList.append(pho)
        photoList.append(icecream)
        photoList.append(salad)
        photoList.append(sushirrito)
        
        //is there a more efficient way of doing this?
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
        
        cell.imageView?.image = photoList[indexPath.row].photo
        
        return cell
    }

}




