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
    let netWork = NetWorking()
    var mapView = NMFMapView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        //NMFMapView        -- 지도 제공 뷰
//        //NMFNaverMapView   -- 지도 제공 뷰 (확대/축소버튼 제공)
//        locationManager = CLLocationManager()
//        locationManager.delegate = self
//
//        //포그라운드일때 위치 추적 권한 요청
//        locationManager.requestWhenInUseAuthorization()
//
//        //배터리에 맞게 권장되는 최적의 정확도
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//
//        //위치 업데이트
//        locationManager.startUpdatingLocation()
        
        
        
        mapView = NMFMapView(frame: view.frame)
        mapView.mapType = .basic
        
        //현재 위치 얻기
        let cameraPosition = mapView.cameraPosition
        print(cameraPosition)
        
        view.addSubview(mapView)
        setCamera()
        setMarker()
//        netWork.getTest()
    }
    
    func setCamera() {
        let camPosition = NMGLatLng(lat: 37.5670135, lng: 126.9783740)
        let cameraUpdate = NMFCameraUpdate(scrollTo: camPosition)
        mapView.moveCamera(cameraUpdate)
    }
    
    func setMarker() {
        let marker = NMFMarker()
        marker.position = NMGLatLng(lat: 37.5670135, lng: 126.9783740)
        marker.iconImage = NMF_MARKER_IMAGE_BLACK
        marker.iconTintColor = UIColor.red
        marker.width = 50
        marker.height = 60
        marker.mapView = mapView
        
        // 정보창 생성
        let infoWindow = NMFInfoWindow()
        let dataSource = NMFInfoWindowDefaultTextSource.data()
        dataSource.title = "서울특별시청"
        infoWindow.dataSource = dataSource
        
        // 마커에 달아주기
        infoWindow.open(with: marker)

    }

}

