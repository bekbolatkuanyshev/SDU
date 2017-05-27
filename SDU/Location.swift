//
//  Hello.swift
//  SDU
//
//  Created by Бекболат Куанышев on 17.03.17.
//  Copyright © 2017 Bekbolat. All rights reserved.
//

import Foundation
import MapKit

class Location : UIViewController {
    
    let sdu_location = CLLocationCoordinate2DMake(43.20786594848359, 76.66972160339355)
    
    
    @IBOutlet weak var myMap: MKMapView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        let background = CAGradientLayer().backgroundGradientColor()
        background.frame = self.view.bounds
        self.view.layer.insertSublayer(background, at: 1)
        
        myMap.mapType = .satellite
        myMap.setRegion(MKCoordinateRegionMakeWithDistance(sdu_location, 2000, 2000), animated: true)
        
        let my_annotation = MKPointAnnotation()
        my_annotation.coordinate = sdu_location
        my_annotation.title = "My SDU"
        
        self.myMap.addAnnotation(my_annotation)
    }
}
