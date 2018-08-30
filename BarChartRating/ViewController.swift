//
//  ViewController.swift
//  BarChartRating
//
//  Created by Ratheesh on 30/08/18.
//  Copyright © 2018 Ratheesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var barChart_view: SAInventoryProductReviewsHeader!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Key Strings like  5  4  3  2  1     Optional
        // Value Strings like 3200 people given 5 rating, 5600 people given 4 rating ... etc        Optional
        // Progress bar value to show the percentage...
        // Colors for each progress bar
        let key_array = ["5","4","3","2","1"]
        let value_array = ["43,34,456","53,5676","89,989","234","9,09,90,323"]
        let progress_array:[Float] = [80.0,50.0,70.0,50.0,20.0]
        let colors_array = [UIColor(red: 159.0/255.0, green: 193.0/255.0, blue: 90.0/255.0, alpha: 1.0),UIColor(red: 159.0/255.0, green: 193.0/255.0, blue: 90.0/255.0, alpha: 1.0),UIColor(red: 255.0/255.0, green: 217.0/255.0, blue: 52.0/255.0, alpha: 1.0),UIColor(red: 255.0/255.0, green: 179.0/255.0, blue: 52.0/255.0, alpha: 1.0),UIColor(red: 255.0/255.0, green: 139.0/255.0, blue: 90.0/255.0, alpha: 1.0)]
        
        barChart_view.barChartSetup(keys: key_array, values: value_array, progressValues: progress_array, colors: colors_array)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

