//
//  watchListCell.swift
//  stockSentiments
//
//  Created by Sinmisola Kareem on 10/25/20.
//

import UIKit

class WatchlistCell: UITableViewCell {
    
    @IBOutlet weak var tickerSymbol: UILabel!
    @IBOutlet weak var tickerName: UILabel!
    
    @IBOutlet weak var sentimentScore: UILabel!
    
    @IBOutlet weak var sentimentButton: UIButton!
    @IBAction func sentimentTapped(_ sender: Any) {
        self.presentSentiment?()
    }
    
    var presentSentiment: (() -> Void)? // a closure
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setColor(primary primaryColor: UIColor) {
//        tickerSymbol.textColor = primaryColor
//        tickerName.textColor = primaryColor
        sentimentScore.textColor = primaryColor
        sentimentButton.tintColor = primaryColor
    }

}
