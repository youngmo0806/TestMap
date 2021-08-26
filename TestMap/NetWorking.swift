//
//  NetWorking.swift
//  TestMap
//
//  Created by hklife_mo on 2021/08/26.
//

import UIKit
import Alamofire

class NetWorking: NSObject {

    
//    func request() {
//        Alamofire.request("https://api.github.com/users",
//                          method: .get, parameters: [:],
//                          encoding: URLEncoding.default,
//                          headers: ["Content-Type":"application/json", "Accept":"application/json"])
//                    .validate(statusCode: 200..<300)
//                    .responseJSON { (response) in
//                    if let JSON = response.result.value
//                    {
//                        print(JSON)
//                    }
//                }

//    }
    
    func getTest() {
        let url = "http://openapi.kepco.co.kr/service/EvInfoServiceV2/getEvSearchList"
            AF.request(url,
                       method: .get,
                       parameters: ["ServiceKey":"RcVkgPeFsEJjy3PZuGrVCvW9nsT3YIlIENKuQXwO9gReMeE41P5XwdRBVdote+y9ht8Ol24zZgdQCqAPrURvGw==",
                                    "numOfRows":"10",
                                    "pageNo":"1",
                                    "addr":""],
                       encoding: URLEncoding.queryString,
                       headers: ["Content-Type":"application/json", "Accept":"application/json"])
                .validate(statusCode: 200..<300)
                .responseJSON { (json) in
                    //여기서 가져온 데이터를 자유롭게 활용하세요.
                    print("결과값 : \(json)")
            }
        }
    
}
