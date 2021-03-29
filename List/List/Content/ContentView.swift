//
//  ContentView.swift
//  List
//
//  Created by OO E on 29.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    var hikes = Hike.all()
    
    var body: some View {
        
        NavigationView {
            //List UI Element
            List(self.hikes, id: \.name) { hike in
                NavigationLink(destination: HikeDetail(hike: hike)) {
                    HikeCell(hike: hike)
                }
            }
            // N.Bar Title
            .navigationBarTitle("Hiking")
        }
        

        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    
    let hike: Hike
    var body: some View {
        HStack {
            Image(hike.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .cornerRadius(16.0)
            VStack(alignment: .leading, spacing: nil)  {
                Text(hike.name)
                Text(hike.surname)

            }
        }
    }
}
