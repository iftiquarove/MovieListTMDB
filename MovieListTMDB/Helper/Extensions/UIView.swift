//
//  UIView.swift
//  MovieListTMDB
//
//  Created by Iftiquar Ahmed Ove on 30/10/22.
//

import UIKit

extension UIView {
    func anchor (top : NSLayoutYAxisAnchor? = nil , left: NSLayoutXAxisAnchor?  = nil , bottom : NSLayoutYAxisAnchor?  = nil , right : NSLayoutXAxisAnchor?  = nil ,centerX : NSLayoutXAxisAnchor? = nil , centerY : NSLayoutYAxisAnchor? = nil, paddingTop : CGFloat = 0 , paddingLeft : CGFloat = 0 , paddingBottom : CGFloat = 0 , paddingRight : CGFloat = 0 ,xConstant : CGFloat = 0, yConstant : CGFloat = 0, width : CGFloat = 0 , height : CGFloat = 0 ){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top , constant: paddingTop).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left , constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom , constant: -paddingBottom).isActive = true
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right , constant: -paddingRight).isActive = true
        }
        
        if let centerX = centerX{
            self.centerXAnchor.constraint(equalTo: centerX, constant: xConstant).isActive = true
        }
        
        if let centerY = centerY{
            self.centerYAnchor.constraint(equalTo: centerY, constant: yConstant).isActive = true
        }
        
        if  width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    func fillSuperView(){
        guard let superView = self.superview else {return}
        translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
        self.leftAnchor.constraint(equalTo: superView.leftAnchor).isActive = true
        self.rightAnchor.constraint(equalTo: superView.rightAnchor).isActive = true
    }
}
