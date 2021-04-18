//
//  StateView.swift
//  grid
//
//  Created by OO E on 18.04.2021.
//

import SwiftUI

struct StateView: View {
    
    @State var name: String = "John"
    
    var body: some View {
        
        VStack {
            Text(name)
                .font(.largeTitle)
                
            Button(action: {
                name = "changed"
            }, label: {
                Text("Button")
            })
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
