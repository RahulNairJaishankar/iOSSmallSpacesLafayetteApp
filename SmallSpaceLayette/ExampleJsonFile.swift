//
//  ExampleJsonFile.swift
//  SmallSpaces
//
//  Created by Rahul Nair Jaishakar on 11/19/15.
//  Copyright © 2015 ENGL108. All rights reserved.
//

import UIKit
import MapKit
class ExampleJsonFile
{
    var image = UIImage()
    var lat:CLLocationDegrees
    var long: CLLocationDegrees
    var location: CLLocationCoordinate2D
    var annotation = MKPointAnnotation()
    var artistName: String
    //var rightButton: UIButton
    
    init(lat: CLLocationDegrees, long: CLLocationDegrees, artistName: String, artImage: UIImage)
    {
        self.lat = lat
        self.long = long
        location = CLLocationCoordinate2DMake(lat, long)
        annotation.coordinate = location
        self.artistName = artistName
        //annotation.title = self.artistName
        //rightButton = UIButton(type: .DetailDisclosure)
        //UIButton.buttonWithType(UIButtonType.DetailDisclosure) as UIButton
        image = artImage
        //annotation.subtitle = "Finally made this work"
    }
}

