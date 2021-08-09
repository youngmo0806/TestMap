//
//  ViewController.swift
//  TestMap
//
//  Created by hklife_mo on 2021/08/09.
//

import UIKit
import Foundation
import NMapsMap

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let mapView = NMFMapView(frame: view.frame)
        view.addSubview(mapView)
        
    }


}

