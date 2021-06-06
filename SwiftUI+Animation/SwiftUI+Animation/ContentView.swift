//
//  ContentView.swift
//  SwiftUI+Animation
//
//  Created by Özgün Ergen on 6.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showDetail: Bool = false
    
    var body: some View {
        
        VStack {
            
            NotificationView()
                .offset(y: self.showDetail ?  -UIScreen.main.bounds.height/2.5 : -UIScreen.main.bounds.height)
                .animation(.interpolatingSpring(mass: 1.0,
                                                stiffness: 100.0,
                                                damping: 10,
                                                initialVelocity: 0))
            
            
            Button("Press Me") {
                showDetail.toggle()
            }
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
