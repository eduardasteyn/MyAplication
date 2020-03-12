//
//  City.swift
//  MyApp
//
//  Created by Jonathan on 09/03/20.
//  Copyright © 2020 teste. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class City : NSObject {
    
    //MARK: Propriedades
    
    
    var urlInicial = "https://samples.openweathermap.org/data/2.5/weather?"
    var urlInicialImage = "https://openweathermap.org/img/wn/"
    //url + "blumenau"
    
    var nome : String
    var temperatura : Double
    var icone : UIImage?
    var urlIcone : String?
    var max : Double
    var min : Double
   // var sensacao : Double
    var descricao : String
    //var chanceChuva : Double
    var vento : String
    
    init(nome: String, temperatura: Double, icone: UIImage?, urlIcone: String, max: Double, min: Double,  descricao: String, vento: String) {
    
   
    self.nome = nome
    self.temperatura = temperatura
    self.icone = icone
    self.urlIcone = urlIcone
    self.max = max
    self.min = min
    //self.sensacao = sensacao
    self.descricao = descricao
   // self.chanceChuva = chanceChuva
    self.vento = vento
        
        
    }
    func urlCity() -> String {
        let query = self.nome
        let apiKey = "7465be2382c82a728bf78ed04fb3e1d0"
        let url = "\(urlInicial)q=\(query)&appid=\(apiKey))"
        
        return url;
    }
   
    func requestJSON(){
        Alamofire.request(urlCity()).responseJSON { (responseData) -> Void in
            if((responseData.result.value) != nil) {
                let JSONObject = JSON(responseData.result.value!)
                print("JSONObject")
                
                self.nome = JSONObject["name"].stringValue
                self.temperatura =  Double(JSONObject["main"]["temp"].stringValue) ?? 0.0
                self.icone = nil
                self.urlIcone = self.urlInicialImage+(JSONObject["weather"][0]["icon"].stringValue)+".png"
                self.max = Double(JSONObject["main"]["temp_max"].stringValue) ?? 0.0
                self.min = Double(JSONObject["main"]["temp_min"].stringValue) ?? 0.0
                self.descricao = JSONObject["weather"][0]["description"].stringValue
                self.vento = JSONObject["wind"]["speed"].stringValue
            }
        }
    }
    
}
