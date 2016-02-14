//
//  BusinessCell.swift
//  Yelp
//
//  Created by Tyler Anthony on 2/13/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    //*** Outlets ***\\
    @IBOutlet weak var thumbImageView: UIImageView! // poster image 
    
    @IBOutlet weak var nameLabel: UILabel! //Restuarant name
    
    @IBOutlet weak var ratingImageView: UIImageView! //Rating of restuarant
    
    @IBOutlet weak var reviewsCountLabel: UILabel! //Number of reviews
    
    @IBOutlet weak var distanceLabel: UILabel! // distance
    
    @IBOutlet weak var addressLabel: UILabel! // address
    
    @IBOutlet weak var categoriesLabel: UILabel! // restuarant categories
    
    
    var business: Business!{
        didSet{
        nameLabel.text = business.name
        thumbImageView.setImageWithURL(business.imageURL!)
        categoriesLabel.text = business.address
        addressLabel.text = business.address
        reviewsCountLabel.text = "\(business.reviewCount!)Reviews"
        ratingImageView.setImageWithURL(business.ratingImageURL!)
        distanceLabel.text = business.distance
        
            
            
        
            
        }
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbImageView.layer.cornerRadius = 5
        thumbImageView.clipsToBounds = true
        
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
