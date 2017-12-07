//
//  APIManager.swift
//  AlmofireWithJSONDecoder
//
//  Created by Umesh on 06/12/17.
//  Copyright © 2017 Umesh. All rights reserved.
//

import Foundation
import Alamofire
import PromiseKit

class APIManager {
    
    static let shared = APIManager()
    
    private init()
    {
    }
    //     func fetchActorFromApi() -> [Actor]
/*
 
  we cant return like this
     
     so need to use promiss kit
 */
    
    func fetchActorFromApi() -> Promise<[Actor]>{
        
        return Promise<[Actor]>{
            fullfil,reject -> Void in
            return Alamofire.request(API_URL).responseString{
                response in
                
                switch(response.result){
                case .success(let responseString):
                    print(responseString)

                    let actorResponse = ActorApiResponse(JSONString:"\(responseString)")!
                    
                    fullfil(actorResponse.actors!)
                    
                case .failure(let error):
                    print(error)
                    
                }
            }
            
            
        }
        
       
    }
    
}
