//
//  FirstViewController.swift
//  SmallSpaceLayette
//
//  Created by Rahul Nair Jaishakar on 11/10/15.
//  Copyright © 2015 ENGL108. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class FirstViewController: UIViewController , MKMapViewDelegate , CLLocationManagerDelegate{

    @IBOutlet var map: MKMapView!
    
    var locationmanager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationmanager.delegate = self //delegating to this view.
        locationmanager.desiredAccuracy = kCLLocationAccuracyBest //Best accuraccy, use of GPS
        locationmanager.requestWhenInUseAuthorization() //requesting location rights when in use
        locationmanager.startUpdatingLocation() //location updating
        
        
        var latitude: CLLocationDegrees = 40.420038 // default view of map
        var longitude: CLLocationDegrees = -86.891996
        var latDelta:CLLocationDegrees = 0.005
        var lonDelta:CLLocationDegrees = 0.005
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        map.setRegion(region, animated: true)
        
        //adding dummy location for testing.
        artPieces.append(ExampleJsonFile(lat: 40.41966283, long: -86.8890671, artistName: "Jenna Robinson", artImage: UIImage(named: "catImage")!))
        artPieces.append(ExampleJsonFile(lat: 40.41963615, long: -86.88926888, artistName: "Esteban Garcia", artImage: UIImage(named: "catImage")!))
        artPieces.append(ExampleJsonFile(lat: 40.41943113, long: -86.8894967, artistName: "James Werner", artImage: UIImage(named: "catImage")!))
        map.addAnnotation(artPieces[0].annotation)
        map.addAnnotation(artPieces[1].annotation)
        map.addAnnotation(artPieces[2].annotation)
        
        map.setRegion(MKCoordinateRegionMake(artPieces[0].location, span), animated: true)
        
        
    }
    
    /*func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) { //location updation
        var userLocation : CLLocation = locations[0]
        var latitude = userLocation.coordinate.latitude
        var longitude = userLocation.coordinate.longitude
        var latDelta:CLLocationDegrees = 0.007
        var lonDelta:CLLocationDegrees = 0.007
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        self.map.setRegion(region, animated: true)
    }*/
    
    func mapView(mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView) {
        performSegueWithIdentifier("annotationClick", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "annotationClick")
        {
            let vc = segue.destinationViewController as! ShowViewController
            vc.image = artPieces[0].image
            vc.lat = artPieces[0].lat
            vc.long = artPieces[0].long
            vc.artistName = artPieces[0].artistName
        }
    }


}

