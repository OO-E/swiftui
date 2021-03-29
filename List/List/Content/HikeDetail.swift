//
//  HikeDetail.swift
//  List
//
//  Created by OO E on 29.03.2021.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        
        VStack {
            
            Image(hike.image)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                    
                }

            
            Text(hike.name)
            Text(hike.surname)
                
            
        }.navigationBarTitle(hike.name,displayMode: .inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Orhan Özgün", surname: "Ergen", image: "ozgun"))
    }
}
