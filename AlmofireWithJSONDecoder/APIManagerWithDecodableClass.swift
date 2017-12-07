//
//  APIManagerWithDecodableClass.swift.swift
//  AlmofireWithJSONDecoder
//
//  Created by Umesh on 06/12/17.
//  Copyright © 2017 Umesh. All rights reserved.
//

import Foundation
import Alamofire
import PromiseKit



struct ActorsInDecodable:Decodable {
    var name : String?
    var county : String?
    var descr : String?
    var image : String?
    
}



class APIManagerWithDecodableClass  {
  
    
    static let shared = APIManagerWithDecodableClass()
    
    private init()
    {
    }
    
  /*
    func fetchActorsFromAPI() {
        Alamofire.request(API_URL).responseJSON { (response) in
            let result = response.data
            do{
                 try JSONDecoder().decode([ActorsInDecodable].self, from: result!)
            }catch
            {
                print("Error")
            }
        }
    }
    */
    
    
    
    
    
    
    
    
    func fetchActorFromApi() -> Promise<[ActorsInDecodable]>{
        
        return Promise<[ActorsInDecodable]>{
            fullfil,reject -> Void in
            return Alamofire.request(API_URL).responseJSON{
                response in
                
                switch(response.result){
                case .success(let responseString):
                    print(responseString)
                    
                    let result = response.data
//                    do{
//                        fullfil( try JSONDecoder().decode([ActorsInDecodable](), from: result!))
//                    }
//                    catch{
//
//                    }
                   // let actorResponse = ActorApiResponse(JSONString:"\(responseString)")!
                    
                    //fullfil(actorResponse.actors!)
                    
                case .failure(let error):
                    print(error)
                    
                }
            }
            
            
        }
        
        
    }
    
    
    
    
    
    
}









