//
//  MapView.swift
//  GDMapDemo
//
//  Created by zbf on 5/29/23.
//

import SwiftUI
import MAMapKit

struct MapView: UIViewRepresentable {
    
    typealias UIViewType = MAMapView
    
    var mapViewDelegate = MapViewDelegateImp()
    
    func makeUIView(context: Context) -> MAMapView {
        MAMapView.updatePrivacyShow(.didShow, privacyInfo: .didContain)
        MAMapView.updatePrivacyAgree(.didAgree)
        let mapView = MAMapView()
        mapView.delegate = mapViewDelegate
        mapView.userTrackingMode = .follow
        mapView.showsUserLocation = true
        return mapView
    }
    
    func updateUIView(_ uiView: MAMapView, context: Context) {
        
    }
    
}

class MapViewDelegateImp: NSObject, MAMapViewDelegate {
    
    func mapViewRequireLocationAuth(_ locationManager: CLLocationManager!) {
        locationManager.requestAlwaysAuthorization()
    }
    
}
