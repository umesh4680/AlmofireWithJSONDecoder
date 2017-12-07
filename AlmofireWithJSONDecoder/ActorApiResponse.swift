//
//  ActorApiResponse.swift
//  AlmofireWithJSONDecoder
//
//  Created by Umesh on 06/12/17.
//  Copyright © 2017 Umesh. All rights reserved.
//

import Foundation
import ObjectMapper

class ActorApiResponse:Mappable
{
    var actors : [Actor]?

 
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        actors <- map["actors"]
    }
    
}

class Actor:Mappable{
    
    var name : String?
    var county : String?
    var descr : String?
    var image : String?
    
    
    required init?(map: Map) {
    
    }
    
     func mapping(map: Map) {
        name <- map["name"]
        county <- map["country"]
        descr <- map["description"]
        image <- map["image"]

    }
    
    

}
