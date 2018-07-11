//
//  ViewController.swift
//  Mobile Mapper
//
//  Created by Benecia Shi on 7/11/18.
//  Copyright © 2018 Benecia Shi. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    let northwesternAnnotation = MKPointAnnotation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let latitude = 42.055984
        let longitude = -87.675171
        let coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        northwesternAnnotation.coordinate = coordinate
        northwesternAnnotation.title = "Northwestern University"
        mapView.addAnnotation(northwesternAnnotation) // pin on Northwestern location
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

