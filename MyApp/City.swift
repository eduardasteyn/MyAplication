//
//  City.swift
//  MyApp
//
//  Created by Jonathan on 09/03/20.
//  Copyright © 2020 teste. All rights reserved.
//

import UIKit

class City : NSObject {
    
    //MARK: Propriedades
    let nome : String
    var temperatura : Double
    var icone : UIImage?
    var max : Double
    var min : Double
   // var sensacao : Double
    var descricao : String
    //var chanceChuva : Double
    var vento : String
    
    init(nome: String, temperatura: Double, icone: UIImage?, max: Double, min: Double,  descricao: String, vento: String) {
        
    self.nome = nome
    self.temperatura = temperatura
    self.icone = icone
    self.max = max
    self.min = min
    //self.sensacao = sensacao
    self.descricao = descricao
   // self.chanceChuva = chanceChuva
    self.vento = vento
        
    
    }
}
