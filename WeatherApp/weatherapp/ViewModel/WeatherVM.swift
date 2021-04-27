//
//  WeatherVM.swift
//  WeatherApp
//
//  Created by OO E on 27.04.2021.
//

import Foundation
import Combine

class WeatherVM: ObservableObject {
    
    private var weatherService: WeatherService!
    
    @Published var weather = Weather ()
    
    init() {
        self.weatherService = WeatherService()
    }
    
    var temperature: String {
        if let humidity = self.weather.humidity {
            return String(format: "%.0f", humidity)
        } else {
            return ""
        }
    }
    
    var humidity: String {
        if let temp = self.weather.temp {
            return String(format: "%.0f", temp)
        } else {
            return ""
        }
    }
    
    var cityName: String = ""
    
    func search() {
        if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlUserAllowed) {
            fetchWeather(by: city)
        }
    }
    
    
    private func fetchWeather(by city: String) {
        self.weatherService.getWeather(city: city) { (weather) in
            if let weather = weather {
                DispatchQueue.main.async {
                    self.weather = weather
                }
            }
        }
    }
    
}
