//
//  MyAppTests.swift
//  MyAppTests
//
//  Created by Jonathan on 09/03/20.
//  Copyright © 2020 teste. All rights reserved.
//

import XCTest
import SwiftyJSON
@testable import MyApp

class MyAppTests: XCTestCase {
    

    func testJSON(){
        let testJsonString = "{\"name\":\"nome da pessoa\"}"
        if let data = testJsonString.data(using:.utf8, allowLossyConversion: false){
            let JSONObject = try? JSON(data:data)
            let nome = JSONObject!["name"]
            XCTAssertEqual(nome, "nome da pessoa", "nome ok")
        }else{
            print("data error");
        }
        
    }
    
    func testCityFromJSON(){
    
        let jsonFromApi = "{\"coord\":{\"lon\":-0.13,\"lat\":51.51},\"weather\":[{\"id\":300,\"main\":\"Drizzle\",\"description\":\"light intensity drizzle\",\"icon\":\"09d\"}],\"base\":\"stations\",\"main\":{\"temp\":280.32,\"pressure\":1012,\"humidity\":81,\"temp_min\":279.15,\"temp_max\":281.15},\"visibility\":10000,\"wind\":{\"speed\":4.1,\"deg\":80},\"clouds\":{\"all\":90},\"dt\":1485789600,\"sys\":{\"type\":1,\"id\":5091,\"message\":0.0103,\"country\":\"GB\",\"sunrise\":1485762037,\"sunset\":1485794875},\"id\":2643743,\"name\":\"London\",\"cod\":200}";
        
        if let data = jsonFromApi.data(using:.utf8, allowLossyConversion: false){
            let JSONObject = try? JSON(data:data)
            
            let cidade = City(nome: , temperatura: <#T##Double#>, icone: <#T##UIImage?#>, max: <#T##Double#>, min: <#T##Double#>, descricao: <#T##String#>, vento: <#T##String#>)
            
            XCTAssertEqual(cidade.nome, "London", "cidade ok")
            XCTAssertEqual(cidade.temperatura, 280.32, "Json ok")
            XCTAssertEqual(cidade.icone, <#T##expression2: Equatable##Equatable#>, <#T##message: String##String#>)
            
  
            
        
        // criar objeto City
        // assert dos campos do city com o json
    }

}
}
