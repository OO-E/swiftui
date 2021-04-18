//
//  BindingView.swift
//  grid
//
//  Created by OO E on 18.04.2021.
//

import SwiftUI

struct BindingView: View {
    
    @State var name: String = ""
    @State private var isPlay: Bool = false
    
    var body: some View {
    
        VStack {
            Text(name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(self.isPlay ? .green : .black)
            TextField("Name", text: $name).padding(12)
            ButtonView(isPlay: $isPlay)
        }
    }
    
    private func printName() {
        print(self.name)
    }
}

struct ButtonView: View {
    
    @Binding var isPlay: Bool
    
    var body: some View {
        
        
        Button(action: {
            self.isPlay.toggle()
        }) {
            Text("Play Button")
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
