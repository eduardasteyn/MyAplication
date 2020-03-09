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
    var temperatura : Int
    var icone : UIImage?
    var max : Int
    var min : Int
    var sensacao : Int
    var descricao : String
    var chanceChuva : Int
    var vento : String
    
    init(nome: String, temperatura: Int, icone: UIImage?, max: Int, min: Int, sensacao: Int, descricao: String, chanceChuva: Int, vento: String) {
        
    self.nome = nome
    self.temperatura = temperatura
    self.icone = icone
    self.max = max
    self.min = min
    self.sensacao = sensacao
    self.descricao = descricao
    self.chanceChuva = chanceChuva
    self.vento = vento
        
    
    }
}
