//
//  ShowViewController.swift
//  SmallSpaces
//
//  Created by Rahul Nair Jaishakar on 11/17/15.
//  Copyright © 2015 ENGL108. All rights reserved.
//

import UIKit
import MapKit

class ShowViewController: UIViewController {

    @IBOutlet var ImageView: UIImageView!
    @IBOutlet var ArtistView: UILabel!
    var image = UIImage()
    var lat:CLLocationDegrees!
    var long: CLLocationDegrees!
    var location: CLLocationCoordinate2D!
    var annotation = MKPointAnnotation()
    var artDescription: String!
    var artistName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        location = CLLocationCoordinate2DMake(lat, long)
        annotation.coordinate = location
        ImageView.image = image
        ArtistView.text = artistName
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
