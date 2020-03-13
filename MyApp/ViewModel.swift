//
//  ViewModel.swift
//  MyApp
//
//  Created by Jonathan on 13/03/20.
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
    public var name : String { return city.nome }
    

    
    
    func requestJson(url : String){
        let url = city.urlIcone
        
        Alamofire.request(url ?? "").responseJSON { (response) in
            if response.result.isSuccess {
                
                guard let data = response.result.value as? [String: Any] else {
                    return
                }
                guard let imageUrl = data["message"] as? String else {
                    return }
                
                self.city.urlIcone = imageUrl
                
                self.requestImagem(url: imageUrl)
            }
            else{
                print("there was an error")
            }
        }
    }
    func requestImagem(url : String){
        print("Requesting image from url: \(url)")
        Alamofire.request(url).response { response in
            if let image = response.data{
                
                self.city.icone = image
                
                
                // } else {
                //    print("Não tem nada aqui")
                // }
            }
        }
    }
}

