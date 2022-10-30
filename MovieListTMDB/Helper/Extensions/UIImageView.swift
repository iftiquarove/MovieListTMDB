//
//  UIImageView.swift
//  MovieListTMDB
//
//  Created by Iftiquar Ahmed Ove on 30/10/22.
//

import UIKit

import UIKit

//To cache images from URL
let imageCache = NSCache<NSString, UIImage>()

extension UIImageView {
    func loadImageUsingCache(withUrl urlString : String, showPlaceHolder: Bool) {
        let url = URL(string: urlString)
        if url == nil {return}
        if showPlaceHolder{
            self.image = #imageLiteral(resourceName: "placeholder")
        }
        
        // check cached image
        if let cachedImage = imageCache.object(forKey: urlString as NSString)  {
            self.image = cachedImage
            return
        }
        
        let activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView.init(style: .medium)
        addSubview(activityIndicator)
        activityIndicator.startAnimating()
        activityIndicator.anchor(centerX: self.centerXAnchor , centerY: self.centerYAnchor ,width: 20, height: 20)
        
        // if not, download image from url
        URLSession.shared.dataTask(with: url!, completionHandler: { (data, response, error) in
            if error != nil {
                print(error!)
                return
            }
            
            DispatchQueue.main.async {
                if let image = UIImage(data: data!) {
                    imageCache.setObject(image, forKey: urlString as NSString)
                    self.image = image
                    activityIndicator.stopAnimating()
                    activityIndicator.removeFromSuperview()
                }
            }
            
        }).resume()
    }
}
