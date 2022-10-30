//
//  UIViewController.swift
//  MovieListTMDB
//
//  Created by Iftiquar Ahmed Ove on 30/10/22.
//

import UIKit

extension UIViewController {
    func showActivityIndicator() {
        DispatchQueue.main.async {[self] in
            let activityIndicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            activityIndicator.backgroundColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
            activityIndicator.layer.cornerRadius = 6
            activityIndicator.center = view.center
            activityIndicator.hidesWhenStopped = true
            activityIndicator.style = .large
            activityIndicator.startAnimating()
            activityIndicator.tag = 100
            for subview in view.subviews {
                if subview.tag == 100 {
                    return
                }
            }
            view.addSubview(activityIndicator)
        }
    }
    
    func hideActivityIndicator() {
        DispatchQueue.main.async {[self] in
            let activityIndicator = view.viewWithTag(100) as? UIActivityIndicatorView
            activityIndicator?.stopAnimating()
            activityIndicator?.removeFromSuperview()
        }
    }
}
