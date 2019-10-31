//
//  Design.swift
//  Karaban
//
//  Created by Michael Wlodawsky on 10/31/19.
//  Copyright © 2019 Karaban. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func setDefaultFrame(superView: UIView) {
        self.frame = CGRect(x: 0, y: 0, width: superView.frame.width, height: superView.frame.height)
    }
}
