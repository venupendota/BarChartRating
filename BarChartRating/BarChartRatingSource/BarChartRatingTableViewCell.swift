//
//  SAInventoryReviewsChartTableCell.swift
//  ShoporAdmin
//
//  Created by Venu on 30/08/18.
//  Copyright © 2018 Venu. All rights reserved.
//

import UIKit

class BarChartRatingTableViewCell: UITableViewCell {

    @IBOutlet weak var ratingKey_lbl: UILabel!
    @IBOutlet weak var ratingValue_lbl: UILabel!
    @IBOutlet weak var rating_progressview: UIProgressView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
