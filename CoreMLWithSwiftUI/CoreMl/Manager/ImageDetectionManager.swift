//
//  ImageDetectionManager.swift
//  CoreMl
//
//  Created by Özgün Ergen on 28.05.2021.
//

import Foundation
import UIKit
import CoreML

class ImageDetectionManager {
    
    let model = Resnet50()

    func detect(_ img: UIImage) -> String? {

        guard let pixelBuffer = img.toCVPixelBuffer(),
              let prediction = try? model.prediction(image: pixelBuffer) else {
            return nil
        }
        return prediction.classLabel
        
    }
    
}
