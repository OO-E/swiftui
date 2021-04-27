//
//  WeatherService.swift
//  WeatherApp
//
//  Created by OO E on 27.04.2021.
//

import Foundation


class WeatherService {
    
    func getWeather(city: String, complation: @escaping (Weather?) ->()) {
        
        guard let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=e118d6594e814fd370e1833e0e5e09a3&units=imperial") else {
            complation(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                complation(nil)
                return
            }
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            if let wartherResponse = weatherResponse {
                let waether  = weatherResponse?.main
                complation(waether)
            }
        }.resume()
    }
    
}
