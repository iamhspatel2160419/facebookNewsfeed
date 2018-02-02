//
//  PostHeaderCell.swift
//  facebookNewsfeed
//
//  Created by hp ios on 2/2/18.
//  Copyright © 2018 andiosdev. All rights reserved.
//

import UIKit

class PostHeaderCell: UITableViewCell {

    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var followButton: UIButton!
    @IBOutlet weak var usernameLabel: UILabel!
    
    var post:Post!
    {
       didSet
       {
        self.updateUI()
        
       }
        
    }
    func updateUI()
    {
        profileImageView.image = post.createdBy.profileImage
        profileImageView.layer.cornerRadius = profileImageView.bounds.width/2.0
        profileImageView.layer.masksToBounds = true
        usernameLabel.text = post.createdBy.username
        
        followButton.layer.borderWidth = 1.0
        followButton.layer.cornerRadius = 2.0
        followButton.layer.borderColor = followButton.tintColor.cgColor
        followButton.layer.masksToBounds = true
    }
    
}
