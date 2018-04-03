//
//  UIViewExtension.swift
//  Youtube
//
//  Created by MySoftheaven BD on 15/1/18.
//  Copyright © 2018 MySoftheaven BD. All rights reserved.
//

import UIKit

extension UIView {
    func addConstraintsWithFormat(format: String, views: UIView... ){
        
        var dictionaryOfViews = [String : UIView]()
        
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            dictionaryOfViews[key] = view
        }
        
       addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: dictionaryOfViews ))
    }
}
