//
//  ViewModel.swift
//  MyApp
//
//  Created by Jonathan on 12/03/20.
//  Copyright © 2020 teste. All rights reserved.
//

import Foundation
import AlamofireImage
import Alamofire

class ViewModel {
    
    // MARK: Propriedades
    let city : City
    
    //MARK: Initialization
    init(suaCidade city : City) {
        self.city = city
    }
    func requestImage(url : String){
        let url = city.urlIcone
        
        Alamofire.request(url ?? "").responseJSON { (response) in
            if response.result.isSuccess {
                guard let data = response.result.value as? [String: Any] else {
                    return
                }
                guard let imageUrl = data["message"] as? String else {
                    return }
    
                self.city.urlIcone = imageUrl
    
                self.requestImage(url: imageUrl)
                }
            else{
                print("there was an error")
            }
        }
    }
    
    


}
