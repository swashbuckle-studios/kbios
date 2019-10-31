//
//  Colors.swift
//  Karaban
//
//  Created by Michael Wlodawsky on 10/30/19.
//  Copyright © 2019 Karaban. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static let gradients: [Int] = [0xfdede8, 0xfce8f0, 0xe9f7fc, 0xe9fbf7]
    
    static func hex2Color(hex: Int) -> UIColor {
        // print("r: \((hex >> 16) & 0xFF), g: \((hex >> 8) & 0xFF), b: \(hex & 0xFF)")
        return UIColor(red: (CGFloat)((hex >> 16) & 0xFF)/255.0 , green: (CGFloat)((hex >> 8) & 0xFF)/255.0,
                       blue: (CGFloat)(hex & 0xFF)/255.0, alpha: 1.0)
    }
}
