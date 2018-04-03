//
//  VideoCell.swift
//  Youtube
//
//  Created by MySoftheaven BD on 13/1/18.
//  Copyright © 2018 MySoftheaven BD. All rights reserved.
//

import UIKit

class VideoClass : UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let thumbnailImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.blue
        return imageView
    }()
    
    let userProfileView : UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.green
        return imageView
    }()
    
    let titleLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.red
        return label
        
    }()
    
    let seperatorView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        return view
    }()
    
    func setupViews()  {

        addSubview(thumbnailImageView)
        addSubview(seperatorView)
        addSubview(userProfileView)
        addSubview(titleLabel)
        
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: thumbnailImageView)
        addConstraintsWithFormat(format: "H:|-16-[v0(44)]", views: userProfileView)
        //vertical constraint
        addConstraintsWithFormat(format: "V:|-16-[v0]-8-[v1(44)]-16-[v2(1)]|", views: thumbnailImageView ,userProfileView , seperatorView)
        addConstraintsWithFormat(format: "H:|[v0]|", views: seperatorView)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


