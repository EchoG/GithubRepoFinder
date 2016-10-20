//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Chenran Gong on 10/19/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {
    
    @IBOutlet weak var repoNameLabel: UILabel!
    
    @IBOutlet weak var starImageView: UIImageView!
    
    @IBOutlet weak var starsCountLabel: UILabel!
    
    @IBOutlet weak var forkImageView: UIImageView!
    
    @IBOutlet weak var forkCountLabel: UILabel!
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var ownerLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var repo: GithubRepo! {
        didSet {
            
            if (repo.name != nil) {
                repoNameLabel.text = repo.name
            }
            
            starImageView.image = UIImage(named: "star")
            forkImageView.image = UIImage(named: "fork")
            
            if (repo.ownerHandle != nil) {
                ownerLabel.text = "by \(repo.ownerHandle!)"
            }
            
            if (repo.stars != nil) {
                starsCountLabel.text = "\(repo.stars!)"
            }
            
            if (repo.forks != nil) {
                forkCountLabel.text = "\(repo.forks!)"
            }
            
            if (repo.ownerAvatarURL != nil) {
                let url = URL(string: repo.ownerAvatarURL!)!
                avatarImageView.setImageWith(url)
            }
            
            if (repo.repoDescription != nil) {
                descriptionLabel.text = repo.repoDescription
            }
            
            
            
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
