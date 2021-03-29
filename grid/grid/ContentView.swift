//
//  ContentView.swift
//  grid
//
//  Created by OO E on 29.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    var animals = [["🐶","🐱"], ["🐭","🐹"], ["🦊","🐻"], ["🐼","🐻‍❄️"]]
    
    var body: some View {
      
        NavigationView {
            
            VStack {
                
                List(self.animals, id: \.self) { animalPair in
                    ForEach(animalPair, id: \.self) { animal in
                        Text(animal)
                            .font(.system(size: 100))
                    }
                    
                    
                }
                
            }
            .navigationBarTitle("Animals")
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
