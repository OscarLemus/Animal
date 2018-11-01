//
//  Transform.swift
//  Animal
//
//  Created by Oscar Zamora Lemus on 04/05/17.
//  Copyright © 2017 Oscar Zamora Lemus. All rights reserved.
//

import Foundation
import CoreGraphics
import UIKit

class Transform
{
    func rotate(view:UIView, degrees:CGFloat)
    {
        view.transform = CGAffineTransform(rotationAngle: (degrees * CGFloat(Double.pi)) / 180.0)
    }
}
