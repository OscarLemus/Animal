//
//  ConstraintsManager.swift
//  MineSweeper
//
//  Created by Oscar Zamora Lemus on 15/01/18.
//  Copyright © 2018 Oscar Zamora Lemus. All rights reserved.
//

import Foundation
import UIKit

class ConstraintManager
{
    static let sharedInstance = ConstraintManager()

    func getConstraints(view:UIView, constraint:Constraint) -> [NSLayoutConstraint]
    {
        let attributes:[NSLayoutConstraint.Attribute] = constraint.getLayoutAttibutes()
        var arrayConstraints:[NSLayoutConstraint] = []
        
        for constraint in (view.superview?.constraints)!
        {
            if let _ = constraint.firstItem
            {
                if (constraint.firstItem?.isEqual(view))!
                {
                    if attributes.contains(constraint.firstAttribute)
                    {
                        arrayConstraints.append(constraint)
                    }
                }
            }
            
            if let _ = constraint.secondItem
            {
                if (constraint.secondItem?.isEqual(view))!
                {
                    if attributes.contains(constraint.secondAttribute)
                    {
                        arrayConstraints.append(constraint)
                    }
                }
            }
        }
    
        for constraint in view.constraints
        {
            if attributes.contains(constraint.firstAttribute)
            {
                arrayConstraints.append(constraint)
            }
        }
        
        return arrayConstraints
    }
    
    func hasConstraints(view:UIView, constraint:Constraint) -> Bool
    {
        let attributes:[NSLayoutConstraint.Attribute] = constraint.getLayoutAttibutes()
        
        for constraint in (view.superview?.constraints)!
        {
            if let _ = constraint.firstItem
            {
                if (constraint.firstItem?.isEqual(view))!
                {
                    if attributes.contains(constraint.firstAttribute)
                    {
                        return true
                    }
                }
            }
            
            if let _ = constraint.secondItem
            {
                if (constraint.secondItem?.isEqual(view))!
                {
                    if attributes.contains(constraint.secondAttribute)
                    {
                        return true
                    }
                }
            }
        }
        
        for constraint in view.constraints
        {
            if attributes.contains(constraint.firstAttribute)
            {
                return true
            }
        }
        
        return false
    }
}
