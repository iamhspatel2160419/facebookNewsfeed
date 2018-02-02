//
//  PostCell.swift
//  facebookNewsfeed
//
//  Created by hp ios on 1/30/18.
//  Copyright © 2018 andiosdev. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var timeAgoLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    var post : Post!
    {
       didSet
       {
        self.updateUI()
        
       }
    }
    func updateUI()
    {
        profileImage.image = post.createdBy.profileImage
        userNameLabel.text = post.createdBy.username
        timeAgoLabel.text = post.timeAgo
        captionLabel.text = post.caption
        postImageView.image = post.image
        postLabel.text = "\(post.numberOfLikes!) Likes    \(post.numberOfComments!) Comments    \(post.numberOfShares!) Shares"
        
    }
    
}

