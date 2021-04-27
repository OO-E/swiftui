//
//  Weather.swift
//  WeatherApp
//
//  Created by OO E on 27.04.2021.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}


struct Weather: Decodable {
    
    var temp: Double?
    var humidity: Double?
    
    
}
