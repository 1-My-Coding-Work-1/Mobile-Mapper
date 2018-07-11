//
//  ViewController.swift
//  Mobile Mapper
//
//  Created by Benecia Shi on 7/11/18.
//  Copyright © 2018 Benecia Shi. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation  //have to put asking permission to use location in Info.plist/ plist

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let northwesternAnnotation = MKPointAnnotation()
    let locationManager = CLLocationManager()
    let address = "Mount Rushmore"
    let geocoder = CLGeocoder()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let latitude = 42.055984
        let longitude = -87.675171
        let coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        northwesternAnnotation.coordinate = coordinate
        northwesternAnnotation.title = "Northwestern University"
        mapView.addAnnotation(northwesternAnnotation) // pin on Northwestern location
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true //default is location of Apple's headquarters in Cupertino California, shows default cuz there's no GPS system in laptop as in phone, so simulate location by going to Debug (on top bar) -> Simulate location -> Custom -> 47.0516, -87.6814 ???
        geocoder.geocodeAddressString(address) { (placemarks, error) in //Mount Rushmore location
            for placemark in placemarks! {
                let annotation = MKPointAnnotation()
                annotation.coordinate = (placemark.location?.coordinate)!
                annotation.title = placemark.name
                self.mapView.addAnnotation(annotation)
            }
        }
    }
}

