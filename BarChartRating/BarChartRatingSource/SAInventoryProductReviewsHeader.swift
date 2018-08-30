//
//  SAInventoryProductReviewsHeader.swift
//  ShoporAdmin
//
//  Created by Ratheesh on 22/08/18.
//  Copyright © 2018 Ratheesh. All rights reserved.
//

import UIKit

class SAInventoryProductReviewsHeader: NibView {
    
    fileprivate let cellNibName = "SAInventoryReviewsChartTableCell"
    fileprivate let cellIdentifier = "barChartCell"
    
    @IBOutlet weak private var barChart_tableView: UITableView!
    
    fileprivate var numberOfRows = 0
    
    fileprivate var key_array:[String]?                 // Key Strings like  5  4  3  2  1
    fileprivate var value_array:[String]?               // Value Strings like 3200 people given 5 rating, 5600 people given 4 rating ... etc
    fileprivate lazy var progress_array = [Float]()     // Progress bar value to show the percentage...
    fileprivate var colors_array:[UIColor]?             // Colors for each progress bar
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupThisHeaderView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupThisHeaderView()
    }

    // MARK: - Setting up this View
    
    private func setupThisHeaderView() {
        
        numberOfRows = progress_array.count
        barChart_tableView.dataSource = self
        barChart_tableView.delegate = self
        let cellNib = UINib(nibName: cellNibName, bundle: nil)
        barChart_tableView.register(cellNib, forCellReuseIdentifier: cellIdentifier)
    }
    
    // Call this method from the Instance of this class
    
    public func barChartSetup(keys:[String]?,values:[String]?,progressValues:[Float],colors:[UIColor]) {
        numberOfRows = progressValues.count
        key_array = keys
        value_array = values
        progress_array = progressValues
        colors_array = colors
        barChart_tableView.reloadData()
    }
    
}

extension SAInventoryProductReviewsHeader:UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? SAInventoryReviewsChartTableCell else {
            return UITableViewCell()
        }
        
        cell.ratingKey_lbl.text = key_array?[indexPath.row] ?? ""
        cell.ratingValue_lbl.text = value_array?[indexPath.row] ?? ""
        
        cell.rating_progressview.progress = progress_array[indexPath.row] / 100.0
        
        cell.rating_progressview.progressTintColor = colors_array?[indexPath.row] ?? UIColor.white
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return barChart_tableView.frame.size.height / CGFloat(numberOfRows)
    }
}
