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
        
        if let data = jsonFromApi.data(using:.utf8){
            do{
                 let JSONObject = try JSON(data:data)
                 let cidade = City(
                    nome: JSONObject["name"].stringValue,
                    temperatura: Double(JSONObject["main"]["temp"].stringValue) ?? 0.0,
                    icone: nil,
                    max: Double(JSONObject["main"]["temp_max"].stringValue) ?? 0.0,
                    min: Double(JSONObject["main"]["temp_min"].stringValue) ?? 0.0,
                    descricao: JSONObject["weather"][0]["description"].stringValue,
                    vento: JSONObject["wind"]["speed"].stringValue
                )
                
                XCTAssertEqual(cidade.nome, "London", "cidade ok")
                XCTAssertEqual(cidade.temperatura, 280.32, "Json ok")
                XCTAssertEqual(cidade.max, 281.15, "tempo max ok")
                XCTAssertEqual(cidade.min, 279.15, "temp min ok")
                XCTAssertEqual(cidade.descricao, "light intensity drizzle", "descricao ok")
                XCTAssertEqual(cidade.vento, "4.1", "velocidade do vento ok")
                
            }catch let error as NSError{
                debugPrint(error)
                XCTAssertTrue(false)
            }
    }

}
}
