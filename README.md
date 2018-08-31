# BarChartRating
bar chart rating like amazon

# Installation

This branch supports Swift 3 and X code 9.3.

# Manual

drag and drop the BarChartRatingSource folder to your project from this example project...

# Usage

step 1: Drag and drop a UIView element in to your View Controller and make the parent class of it to BarChartRatingView

step 2: Create an outlet for the BarChartRatingView

        @IBOutlet weak var barChart_view: BarChartRatingView!

step 3: Intialize the required properties...

        let key_array = ["5","4","3","2","1"]         #Optional
        let value_array = ["43,34,456","53,5676","89,989","234","9,09,90,323"]      #Optional
        let progress_array:[Float] = [80.0,50.0,70.0,50.0,20.0]
        let colors_array = [UIColor(red: 159.0/255.0, green: 193.0/255.0, blue: 90.0/255.0, alpha: 1.0),UIColor(red: 159.0/255.0, green: 193.0/255.0, blue: 90.0/255.0, alpha: 1.0),UIColor(red: 255.0/255.0, green: 217.0/255.0, blue: 52.0/255.0, alpha: 1.0),UIColor(red: 255.0/255.0, green: 179.0/255.0, blue: 52.0/255.0, alpha: 1.0),UIColor(red: 255.0/255.0, green: 139.0/255.0, blue: 90.0/255.0, alpha: 1.0)]
        
 Here key_array is used as the key labels like rating keys
 Value Strings like 3200 people given 5 rating, 5600 people given 4 rating ... etc
 Progress bar value to show the percentage...
 Colors for each progress bar
 
 step 4: Call the required method with the above objects...
 
        barChart_view.barChartSetup(keys: key_array, values: value_array, progressValues: progress_array, colors: colors_array)
 
 # Requirements
 
 
Xcode 9+ Swift 3.0 iOS 8+ ARC

# License

This project is under MIT license. For more information, see LICENSE file.

Have fun... Happy Coding!!!
