//
//  NewsFeedTableViewController.swift
//  facebookNewsfeed
//
//  Created by hp ios on 2/1/18.
//  Copyright © 2018 andiosdev. All rights reserved.
//

import UIKit

class NewsFeedTableViewController: UITableViewController {

    
    var searchContoller = UISearchController()
    var post = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setUpSearchContoller()
        self.fetchPost()
        tableView.separatorStyle = .none
        
        // dynamic tableview cell height
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
        
        
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 578.0
    }
    
    
    
    func fetchPost()
    {
       post = Post.fetchPosts()
        
    }
    func setUpSearchContoller()
    {
        searchContoller = UISearchController(searchResultsController: nil)
        searchContoller.hidesNavigationBarDuringPresentation = false
        searchContoller.dimsBackgroundDuringPresentation = true
        searchContoller.searchBar.barStyle = .black
        navigationItem.titleView = searchContoller.searchBar
        definesPresentationContext = true
        
    }

}

extension NewsFeedTableViewController
{
   
    
    // MARK: - Table view data source
    
    
  
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return post.count
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell
        
        cell.post = self.post[indexPath.row]
        
        return cell
    }
    
    
    
    
}
