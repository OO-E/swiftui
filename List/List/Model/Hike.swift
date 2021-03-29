//
//  Hike.swift
//  List
//
//  Created by OO E on 29.03.2021.
//

import Foundation


struct Hike {
    let name: String
    let surname: String
    let image: String
}

extension Hike {
    
    static func all() -> [Hike] {
        
        return [
            Hike(name: "Orhan Özgün", surname: "Ergen", image: "ozgun"),
            Hike(name: "Cem", surname: "Bideci", image: "cem"),
            Hike(name: "Tolga", surname: "Yıldırım", image: "tolga")
        ]
    }
    
}

