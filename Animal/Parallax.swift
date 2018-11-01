//
//  Parallax.swift
//  Animal
//
//  Created by Oscar Zamora Lemus on 04/05/17.
//  Copyright © 2017 Oscar Zamora Lemus. All rights reserved.
//

import Foundation
import UIKit

class Parallax
{
    func addParallax(view: UIView, amountX:Int, amountY:Int)
    {
        let horizontal = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        horizontal.minimumRelativeValue = -amountX
        horizontal.maximumRelativeValue = amountX
    
        let vertical = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        vertical.minimumRelativeValue = -amountY
        vertical.maximumRelativeValue = amountY
    
        let group = UIMotionEffectGroup()
        group.motionEffects = [horizontal, vertical]
        view.addMotionEffect(group)
    }
    
    func removeParallax(view: UIView)
    {
        for effect in view.motionEffects
        {
            view.removeMotionEffect(effect)
        }
    }
}
