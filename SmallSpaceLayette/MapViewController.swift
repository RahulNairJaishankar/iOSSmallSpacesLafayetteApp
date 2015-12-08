//
//  MapViewController.swift
//  SmallSpaces
//
//  Created by Rahul Nair Jaishakar on 11/17/15.
//  Copyright © 2015 ENGL108. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var latitude: CLLocationDegrees = 40.420038 // default view of map
        var longitude: CLLocationDegrees = -86.891996
        var latDelta:CLLocationDegrees = 0.007
        var lonDelta:CLLocationDegrees = 0.007
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        map.setRegion(region, animated: true)
        var annotation = artPieces[0].annotation;
        map.addAnnotation(annotation)
        map.setRegion(MKCoordinateRegionMake(artPieces[0].location, span), animated: true)

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
