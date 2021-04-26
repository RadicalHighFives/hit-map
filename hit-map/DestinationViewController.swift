//
//  DestinationViewController.swift
//  hit-map
//
//  Created by israel soto on 4/1/21.
//

import Foundation
import UIKit
import MapKit
import SwiftUI

class DestinationViewController: UIViewController{
    
    @IBOutlet weak var mapView: MKMapView!
        
    @IBAction func closeView(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func changeMapType(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            mapView.mapType = .standard
        }
        else{
            mapView.mapType = .satellite
        }
    }
    
    
    override func viewDidLoad(){
        super.viewDidLoad();
        // ===== Set initial location in Ventura CA
        let initialLocation = CLLocation(latitude: 34.2805, longitude: -119.229034)
        let regionRadius: CLLocationDistance = 1000.0
        let region = MKCoordinateRegion(center: initialLocation.coordinate,
                latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(region, animated: true)
        mapView.delegate = self
        
    }
}
extension DestinationViewController: MKMapViewDelegate{
    func mapViewWillStartRenderingMap(_ mapView: MKMapView)
    {
        print("rendering ... ")
    }
}

struct DestinationViewController_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
