//
//  InstagramTableViewController.swift
//  facebookNewsfeed
//
//  Created by hp ios on 2/2/18.
//  Copyright © 2018 andiosdev. All rights reserved.
//

import UIKit

class InstagramTableViewController: UITableViewController {

    var post: [Post]?
    
    struct StoryBoardID
    {
        static let postHeaderCell = "PostHeaderCell"
        static let postCell = "InstagramPostCell"
        static let postHeaderHeight:CGFloat = 57.0
        static let postCellDefaultHeight : CGFloat = 578.0
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.fetchPosts()
        
        tableView.estimatedRowHeight = StoryBoardID.postCellDefaultHeight
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.separatorColor = UIColor.clear
      
    }
    func fetchPosts()
    {
        self.post = Post.fetchPosts()
        self.tableView.reloadData()
        
    }

}
extension InstagramTableViewController
{
    
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        if let post = post
        {
           return post.count
            
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if let _ = post
        {
           return 1
        }
        else
        {
           return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: StoryBoardID.postCell, for: indexPath) as! InstagramPostCell
        cell.post = self.post?[indexPath.section]
        cell.selectionStyle = .none
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: StoryBoardID.postHeaderCell) as! PostHeaderCell
        cell.post = self.post?[section]
        cell.backgroundColor = UIColor.white
        return cell
    }
    
  
    
   override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        return StoryBoardID.postHeaderHeight
    }
    
}
