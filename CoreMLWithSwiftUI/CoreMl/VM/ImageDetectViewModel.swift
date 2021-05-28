//
//  ImageDetectViewModel.swift
//  CoreMl
//
//  Created by Özgün Ergen on 28.05.2021.
//

import Foundation
import SwiftUI
import Contacts

class ImageDetectionViewModel: ObservableObject {
    
    var name: String = ""
    var manager: ImageDetectionManager!
    
    @Published var predictionLabel: String = ""
    
    init(manager: ImageDetectionManager) {
        
        self.manager = manager
    }

    func detect(_ name: String) {
        
        let image = UIImage(named: name)
        
        guard let resizedImage = image?.resizeImage(targetSize: CGSize(width: 224, height: 224)) else {
            fatalError("Unable to resize the image!")
        }
        
        if let labal = self.manager.detect(resizedImage) {
            self.predictionLabel = labal
        }
        
    }
    
}

