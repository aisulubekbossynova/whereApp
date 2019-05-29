//
//  Color.swift
//  whereApp
//
//  Created by Macbook on 18.04.18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import Foundation
import UIKit
class Colors {
    var gl: CAGradientLayer!
    
    init() {
        let colorBottom = UIColor(red: 255.0 / 255.0, green: 255.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0).cgColor
        let colorTop = UIColor(red: 158.0 / 255.0, green: 207.0 / 255.0, blue: 254.0 / 255.0, alpha: 1.0).cgColor
        
        self.gl = CAGradientLayer()
        self.gl.colors = [colorTop, colorBottom]
        self.gl.locations = [0.0, 1.0]
    }
}
