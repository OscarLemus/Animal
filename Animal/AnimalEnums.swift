//
//  AnimalEnums.swift
//  MineSweeper
//
//  Created by Oscar Zamora Lemus on 15/01/18.
//  Copyright © 2018 Oscar Zamora Lemus. All rights reserved.
//

import Foundation
import UIKit

enum Constraint:Int
{
    case PositionX
    case PositionY
    case SizeWidth
    case SizeHeight
    
    func getLayoutAttibutes()->([NSLayoutConstraint.Attribute])
    {
        switch self
        {
            case .PositionX:
                return [NSLayoutConstraint.Attribute.centerX, NSLayoutConstraint.Attribute.leading, NSLayoutConstraint.Attribute.left, NSLayoutConstraint.Attribute.leadingMargin, NSLayoutConstraint.Attribute.leftMargin, NSLayoutConstraint.Attribute.trailing, NSLayoutConstraint.Attribute.right, NSLayoutConstraint.Attribute.trailingMargin, NSLayoutConstraint.Attribute.rightMargin]
            case .PositionY:
                return [NSLayoutConstraint.Attribute.centerY, NSLayoutConstraint.Attribute.top, NSLayoutConstraint.Attribute.topMargin, NSLayoutConstraint.Attribute.bottom, NSLayoutConstraint.Attribute.bottomMargin]
            case .SizeWidth:
                return [NSLayoutConstraint.Attribute.width, NSLayoutConstraint.Attribute.leading, NSLayoutConstraint.Attribute.left, NSLayoutConstraint.Attribute.leadingMargin, NSLayoutConstraint.Attribute.leftMargin, NSLayoutConstraint.Attribute.trailing, NSLayoutConstraint.Attribute.right, NSLayoutConstraint.Attribute.trailingMargin, NSLayoutConstraint.Attribute.rightMargin]
            case .SizeHeight:
                return [NSLayoutConstraint.Attribute.height, NSLayoutConstraint.Attribute.top, NSLayoutConstraint.Attribute.topMargin, NSLayoutConstraint.Attribute.bottom, NSLayoutConstraint.Attribute.bottomMargin]
        }
    }
}
