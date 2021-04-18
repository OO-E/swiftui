//
//  ObservableObjectView.swift
//  grid
//
//  Created by OO E on 18.04.2021.
//

import SwiftUI

struct ObservableObjectView: View {
    
    @ObservedObject var fancyTimer = FancyTimer()
    @EnvironmentObject var userSettings: UserSettings
    
    @Binding var score: Int
    
    var body: some View {

        VStack {
            Text("Time : \(self.fancyTimer.value)").font(.largeTitle)
            Text("Score : \(self.userSettings.score)").font(.title3)
            CustomLabel()
            Button(action: {
                self.userSettings.score += 1
            }) {
                Text("Tapped Me For Score")
            }
        }
        
        
        
        
    }
}

struct CustomLabel: View {
    
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("Custom Label For EnviromentObject \(userSettings.score)")
        }
    }
    
}

struct ObservableObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObjectView(score: .constant(10)).environmentObject(UserSettings())
    }
}

//A type of object with a publisher that emits before the object has changed.
class FancyTimer: ObservableObject {
    
    @Published var value: Int = 0
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (time) in
            self.value += 1
        }
    }
}

