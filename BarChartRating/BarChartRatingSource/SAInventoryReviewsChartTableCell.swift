//
//  SAInventoryReviewsChartTableCell.swift
//  ShoporAdmin
//
//  Created by Ratheesh on 23/08/18.
//  Copyright © 2018 Ratheesh. All rights reserved.
//

import UIKit

class SAInventoryReviewsChartTableCell: SABaseTableViewCell {

    @IBOutlet weak var ratingKey_lbl: SABaseLabel!
    @IBOutlet weak var ratingValue_lbl: SABaseLabel!
    @IBOutlet weak var rating_progressview: UIProgressView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        applyColorsForUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Apply Colors For UI
    
    private func applyColorsForUI() {
        ratingKey_lbl.textColor = UIColor(hexString: defaultTheme.SAProductDetailsVC_ReviewsHeader_customerRerview_chart_key_text)
        ratingValue_lbl.textColor = UIColor(hexString: defaultTheme.SAProductDetailsVC_ReviewsHeader_customerRerview_chart_value_text)
    }
}
