//
//  ViewController.swift
//  AlmofireWithJSONDecoder
//
//  Created by Umesh on 06/12/17.
//  Copyright © 2017 Umesh. All rights reserved.
//

import UIKit

import AlamofireImage

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    

    @IBOutlet weak var table: UITableView!
    
    var datasourceArray = [Actor]()
    
    var dataSourceArrayInDecodable = [ActorsInDecodable]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       // table.estimatedRowHeight = 150
        
        table.dataSource = self
        table.delegate = self
        
        
    //=== Using Alamofire with Data Mapping.
        
       let apicall =  APIManager.shared.fetchActorFromApi()
        apicall.then{
            actors->Void in
            
            self.datasourceArray = actors
            self.table.reloadData()
            }.catch { (error) in
                
        }
     //=======================
        
        
        
     //===== Using Alamofire with Data Decodable
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasourceArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActorCell") as! ActorCell
        
        cell.name.text = datasourceArray[indexPath.row].name
        cell.country.text = datasourceArray[indexPath.row].county
        cell.descriptionLabel.text = datasourceArray[indexPath.row].descr
        
        cell.actorImage.af_setImage(withURL: URL(string: datasourceArray[indexPath.row].image!)!)
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableViewAutomaticDimension
//    }

}

