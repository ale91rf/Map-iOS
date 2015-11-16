//
//  ViewController.swift
//  Map-iOS
//
//  Created by Ale Ramírez Fernández on 16/11/15.
//  Copyright © 2015 AleFernandez. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mMap: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //36.722559, -4.417289
        
        var mLatitude:CLLocationDegrees = 36.722559
        
        var mLongitude:CLLocationDegrees = -4.417289
        
        var mLatDelta:CLLocationDegrees = 0.03
        
        var mLongDelta:CLLocationDegrees = 0.03
        
        var mSpan:MKCoordinateSpan = MKCoordinateSpanMake(mLatDelta, mLongDelta)
        
        var mLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(mLatitude, mLongitude)
        
        var mRegion:MKCoordinateRegion = MKCoordinateRegionMake(mLocation, mSpan)
        
        mMap.setRegion(mRegion, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

