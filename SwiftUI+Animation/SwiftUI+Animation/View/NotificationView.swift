//
//  NotificationView.swift
//  SwiftUI+Animation
//
//  Created by Özgün Ergen on 6.06.2021.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        Text("Success")
            .padding()
            .frame(width: UIScreen.main.bounds.width - 10, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color.white)
            .background(Color.green)
            .cornerRadius(10)
            
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
