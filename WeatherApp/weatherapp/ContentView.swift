//
//  ContentView.swift
//  WeatherApp
//
//  Created by OO E on 27.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM: WeatherVM
    
    
    init() {
        
        self.weatherVM = WeatherVM()
        
    }
    
    
    var body: some View {
        VStack(alignment: .center, spacing: nil, content: {
            
            
            TextField("Enter City Name",
                      text: self.$weatherVM.cityName,
                      onCommit:  {
                        self.weatherVM.search()
                      })
                .font(.custom("Arial", size: 30))
            .padding()
            .fixedSize()
            
            Text(self.weatherVM.temperature)
                .font(.custom("Arial", size: 60))
                .foregroundColor(Color.white)
                .padding()
            
        }).frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
            
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
