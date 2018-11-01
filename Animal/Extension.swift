//
//  Extension.swift
//  Animal
//
//  Created by Oscar on 09/05/17.
//  Copyright © 2017 Oscar. All rights reserved.
//

import Foundation
import UIKit

//MARK:- View

public extension UIView
{
    //MARK:- Move
    func move(x:CGFloat)
    {
        move(x: x, y: 0)
    }
    
    func move(y:CGFloat)
    {
        move(x: 0, y: y)
    }
    
    func move(x:CGFloat, y:CGFloat)
    {
        Animation.sharedInstance.translate(view: self, x: x, y: y)
    }
    
    func move(x:CGFloat, duration:TimeInterval)
    {
        move(x: x, y: 0, duration: duration, delay:0)
    }
    
    func move(y:CGFloat, duration:TimeInterval)
    {
        move(x: 0, y: y, duration: duration, delay:0)
    }
    
    func move(x:CGFloat, duration:TimeInterval, delay:TimeInterval)
    {
        move(x: x, y: 0, duration: duration, delay:delay)
    }
    
    func move(y:CGFloat, duration:TimeInterval, delay:TimeInterval)
    {
        move(x: 0, y: y, duration: duration, delay:delay)
    }
    
    func move(x:CGFloat, y:CGFloat, duration:TimeInterval)
    {
        move(x: x, y: y, duration: duration, delay:0)
    }
    
    func move(x:CGFloat, y:CGFloat, duration:TimeInterval, delay: TimeInterval)
    {
        Animation.sharedInstance.translateWithAnimation(view: self, x: x, y: y, duration: duration, delay: delay, options: .curveEaseInOut, completion: nil)
    }
    
    //MARK:- MoveTo
    
    func moveTo(x:CGFloat)
    {
        moveTo(x: x, y: center.y)
    }
    
    func moveTo(y:CGFloat)
    {
        moveTo(x: center.x, y: y)
    }
    
    func moveTo(x:CGFloat, y:CGFloat)
    {
        Animation.sharedInstance.translateTo(view: self, x: x, y: y)
    }
    
    func moveTo(x:CGFloat, y:CGFloat, duration:TimeInterval)
    {
        moveTo(x: x, y: y, duration: duration, delay: 0)
    }
    
    func moveTo(x:CGFloat, y:CGFloat, duration:TimeInterval, delay:TimeInterval)
    {
        Animation.sharedInstance.translateToWithAnimation(view: self, x: x, y: y, duration: duration, delay: delay, options: .curveEaseInOut, completion: nil)
    }
    
    func moveTo(x:CGFloat, duration:TimeInterval)
    {
        moveTo(x:x, y:center.y, duration:duration)
    }
    
    func moveTo(x:CGFloat, duration:TimeInterval, delay:TimeInterval)
    {
        moveTo(x:x, y:center.y, duration:duration, delay:delay)
    }

    func moveTo(y:CGFloat, duration:TimeInterval)
    {
        moveTo(x:center.x, y:y, duration:duration)
    }
    
    func moveTo(y:CGFloat, duration:TimeInterval, delay:TimeInterval)
    {
        moveTo(x:center.x, y:y, duration:duration, delay:delay)
    }
    
    //MARK:- Scale
    
    func scale(scale:CGFloat)
    {
        Animation.sharedInstance.scale(view:self, scale:scale)
    }
    
    func scale(scale:CGFloat, duration:TimeInterval)
    {
        self.scale(scale: scale, duration: duration, delay: 0)
    }
    
    func scale(scale:CGFloat, duration:TimeInterval, delay:TimeInterval)
    {
        Animation.sharedInstance.scaleWithAnimation(view:self, scale:scale, duration: duration, delay: delay, options: .curveEaseInOut, completion: nil)
    }
    
    //MARK:- Resize
    
    func resize(width:CGFloat)
    {
        Animation.sharedInstance.resize(view: self, width: width, height: self.frame.height)
    }
    
    func resize(height:CGFloat)
    {
        Animation.sharedInstance.resize(view: self, width: self.frame.width, height: height)
    }
    
    func resize(width:CGFloat, height:CGFloat)
    {
        Animation.sharedInstance.resize(view: self, width: width, height: height)
    }
    
    func resize(width:CGFloat, duration:TimeInterval)
    {
        resize(width: width, height: self.frame.height, duration: duration, delay: 0)
    }
    
    func resize(height:CGFloat, duration:TimeInterval)
    {
        resize(width: self.frame.width, height: height, duration: duration, delay: 0)
    }
    
    func resize(width:CGFloat, height:CGFloat, duration:TimeInterval)
    {
        resize(width: width, height: height, duration: duration, delay: 0)
    }
    
    func resize(width:CGFloat, height:CGFloat, duration:TimeInterval, delay:TimeInterval)
    {
        Animation.sharedInstance.resizeWithAnimation(view: self, width: width, height: height, duration: duration, delay: delay, options: .curveEaseInOut, completion: nil)
    }
    
    //MARK:- Alpha
    func alpha(alpha:CGFloat)
    {
        self.alpha = alpha
    }
    
    func alpha(alpha:CGFloat, duration:TimeInterval)
    {
        self.alpha(alpha:alpha, duration:duration, delay:0)
    }
    
    func alpha(alpha:CGFloat, duration:TimeInterval, delay:TimeInterval)
    {
        self.alpha(alpha:alpha, duration:duration, delay:delay, completion:nil)
    }
    
    func alpha(alpha:CGFloat, duration:TimeInterval, delay:TimeInterval, completion:((Bool) -> Void)?)
    {
        Animation.sharedInstance.alphaWithAnimation(view: self, alpha: alpha, duration: duration, delay: delay, options: .curveEaseInOut, completion: completion)
    }
    
    func performBlockAfterDelay(_ delay:Double, closure:@escaping ()->())
    {
        let when = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: when, execute: closure)
    }
}


//MARK:- ImageView

public extension UIImageView
{
    //MARK:- Image
    
    func setImage(image:UIImage, duration:TimeInterval)
    {
        setImage(image: image, duration: duration, completion: nil)
    }
    
    func setImage(image:UIImage, duration:TimeInterval, delay:TimeInterval)
    {
        self.performBlockAfterDelay(delay)
        {
            self.setImage(image: image, duration: duration, completion: nil)
        }
    }
    
    func setImage(image:UIImage, duration:TimeInterval, completion:((Bool) -> Swift.Void)? = nil)
    {
        
        UIView.transition(with: self,
                          duration: duration,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.image = image
            },
                completion: nil)
        
        
        
    }
}


//MARK:- Label

public extension UILabel
{

    func setText(title:String, duration:TimeInterval)
    {
        setText(title: title, duration: duration, completion: nil)
    }
    
    func setText(title:String, duration:TimeInterval, delay:TimeInterval)
    {
        self.performBlockAfterDelay(delay)
        {
            self.setText(title: title, duration: duration, completion: nil)
        }
    }
    
    func setText(title:String, duration:TimeInterval, completion:((Bool) -> Swift.Void)? = nil)
    {
        UIView.transition(with: self,
                          duration: duration,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.text = title
            },
                          completion: completion)
    }
    
}

//MARK: Button
public extension UIButton{
    func setTitle(title:String, duration:TimeInterval, completion:((Bool) -> Swift.Void)? = nil)
    {
        DispatchQueue.main.async
            {
                UIView.transition(with: self.titleLabel!,
                                  duration: duration,
                                  options: .transitionCrossDissolve,
                                  animations: { [weak self] in
                                    self?.setTitle(title, for: .normal)
                                    //self?.titleEdgeInsets = UIEdgeInsets(top: -4.0, left: 1.0, bottom: 0.0, right: 0.0)
                    },
                                  completion: nil)
        }
    }
}
