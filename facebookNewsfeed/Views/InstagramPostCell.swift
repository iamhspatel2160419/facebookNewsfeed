//
//  InstagramPostCell.swift
//  facebookNewsfeed
//
//  Created by hp ios on 2/2/18.
//  Copyright © 2018 andiosdev. All rights reserved.
//

import UIKit

class InstagramPostCell: UITableViewCell {

    @IBOutlet weak var postCaptionLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var timeAgoLabel: UILabel!
    @IBOutlet weak var numberOfLikesBtn: UIButton!
    
    var post:Post!
    {
       didSet
       {
        self.updateUI()
       }
    }
    func updateUI()
    {
      self.postImageView.image = post.image
      self.postCaptionLabel.text = post.caption
      numberOfLikesBtn.setTitle("Be the first one to share a comment", for: [])
      timeAgoLabel.text = post.timeAgo
    }
    
    
}
