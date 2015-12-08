//
//  SecondViewController.swift
//  SmallSpaceLayette
//
//  Created by Rahul Nair Jaishakar on 11/10/15.
//  Copyright © 2015 ENGL108. All rights reserved.
//

import UIKit


//example json file intialized here..
var artPieces = [ExampleJsonFile]()

class SecondViewController: UIViewController ,UICollectionViewDelegate, UICollectionViewDataSource{

    @IBOutlet var CollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        CollectionView.dataSource = self
        CollectionView.delegate = self
        
        
        
        let value = UIInterfaceOrientation.Portrait.rawValue
        UIDevice.currentDevice().setValue(value, forKey: "orientation")
        
        //dummy location
        //artPieces.append(ExampleJsonFile(lat: 40.41941497, long: -86.88824344, artistName: "Jenna Robinson", artImage: UIImage(named: "catImage")!))
        //artPieces.append(ExampleJsonFile(lat: 40.41941497, long: -86.88824344, artistName: "Jenna Robinson", artImage: UIImage(named: "catImage")!))
        print(artPieces)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return artPieces.count
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        
        cell.ImageView?.image = artPieces[indexPath.row].image
        
        return cell;
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("abc")
        self.performSegueWithIdentifier("showImage", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showImage"
        {
            let indexPaths = self.CollectionView!.indexPathsForSelectedItems()!
            let indexPath = indexPaths[0] as NSIndexPath
            
            let vc = segue.destinationViewController as! ShowViewController
            
            vc.image = artPieces[indexPath.row].image
            vc.lat = artPieces[indexPath.row].lat
            vc.long = artPieces[indexPath.row].long
            vc.artistName = artPieces[indexPath.row].artistName
            
            
            
        }
        let vc = segue.destinationViewController as! ShowViewController
        
        vc.image = artPieces[0].image
        vc.lat = artPieces[0].lat
        vc.long = artPieces[0].long
        vc.artistName = artPieces[0].artistName
        
        
    }
    
    //to cancel autorotation
    override func shouldAutorotate() -> Bool {
        return false
    }


}

