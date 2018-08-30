//
//  SAInventoryProductReviewsHeader.swift
//  ShoporAdmin
//
//  Created by Ratheesh on 22/08/18.
//  Copyright © 2018 Ratheesh. All rights reserved.
//

import UIKit

class SAInventoryProductReviewsHeader: UITableViewHeaderFooterView {
    
    static let identifier = "inventoryProductReviewsTableHeader"

    @IBOutlet weak var barChart_tableView: UITableView!
    @IBOutlet weak var totalRating_lbl: UILabel!
    @IBOutlet weak var totalRatedCount_lbl: UILabel!
    @IBOutlet weak var customerReviewsKey_lbl: UILabel!
    @IBOutlet weak var rating_view: FloatRatingView!
    
    var numberOfRows = 5
    
    var key_array = ["5","4","3","2","1"]
    var value_array = ["43,34,456","53,5676","89,989","234","9,09,90,323"]
    var progress_array:[Float] = [80.0,50.0,70.0,50.0,20.0]
    
    // MARK: - Apply Colors For UI
    
    private func applyColorsForUI() {
        for lbl in [totalRating_lbl,totalRatedCount_lbl,customerReviewsKey_lbl] {
            lbl?.textColor = UIColor(hexString: defaultTheme.SAProductDetailsVC_ReviewsHeader_customerRerview_text)
        }
    }
    
    func setupThisHeaderView() {
        
        applyColorsForUI()
        
        barChart_tableView.dataSource = self
        barChart_tableView.delegate = self
        let cellNib = UINib(nibName: SAString.NibNames.SAInventoryReviewsChartTableCell, bundle: nil)
        barChart_tableView.register(cellNib, forCellReuseIdentifier: SAString.CellIdentifier.inventoryReviewsChartTableCell)
    }
    
}

extension SAInventoryProductReviewsHeader:UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SAString.CellIdentifier.inventoryReviewsChartTableCell) as? SAInventoryReviewsChartTableCell else {
            return UITableViewCell()
        }
        
        cell.ratingKey_lbl.text = key_array[indexPath.row]
        cell.ratingValue_lbl.text = value_array[indexPath.row]
        
        cell.rating_progressview.progress = progress_array[indexPath.row] / 100.0
        
        colorVariationsForCells(indexPath, cell: cell)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return barChart_tableView.frame.size.height / CGFloat(numberOfRows)
    }
    
    // MARK: - Apply Colors
    
    private func colorVariationsForCells(_ indexPath:IndexPath, cell:SAInventoryReviewsChartTableCell) {
        
//        cell.rating_progressview.tintColor = UIColor.white
        
        switch indexPath.row {
        case 0:
            cell.rating_progressview.progressTintColor = UIColor(hexString: defaultTheme.BarChart_5_bar)
            break
        case 1:
            cell.rating_progressview.progressTintColor = UIColor(hexString: defaultTheme.BarChart_4_bar)
            break
        case 2:
            cell.rating_progressview.progressTintColor = UIColor(hexString: defaultTheme.BarChart_3_bar)
            break
        case 3:
            cell.rating_progressview.progressTintColor = UIColor(hexString: defaultTheme.BarChart_2_bar)
            break
        case 4:
            cell.rating_progressview.progressTintColor = UIColor(hexString: defaultTheme.BarChart_1_bar)
            break
        default:
            break
        }
    }
    
}
