//
//  ViewController.swift
//  TestMap
//
//  Created by hklife_mo on 2021/08/09.
//

import UIKit
import Foundation
import NMapsMap
import CoreLocation


class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //NMFMapView        -- 지도 제공 뷰
        //NMFNaverMapView   -- 지도 제공 뷰 (확대/축소버튼 제공)
        locationManager = CLLocationManager()
        locationManager.delegate = self
        
        //포그라운드일때 위치 추적 권한 요청
        locationManager.requestWhenInUseAuthorization()
        
        //배터리에 맞게 권장되는 최적의 정확도
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        //위치 업데이트
        locationManager.startUpdatingLocation()
        
        //위,경도 가져오기
        let coor = locationManager.location?.coordinate
        var latitude = coor?.latitude
        var longitude = coor?.longitude
        
        print("위도:\(latitude!), 경도:\(longitude!)")
        
        
        
        let mapView = NMFMapView(frame: view.frame)
//        var coder = NSCoder()
        
        
        mapView.mapType = .basic
        
//        mapView.ma
        
        
        view.addSubview(mapView)
        
        
        
        
        

        
    }


}

