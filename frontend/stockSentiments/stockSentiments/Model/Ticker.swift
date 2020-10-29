//
//  watch.swift
//  stockSentiments
//
//  Created by Sinmisola Kareem on 10/25/20.
//


// stores all relevant information for a specific ticker
class Ticker {
    var symbol: String
    var name: String
    var sentimentScore: Double
    var timestamp: String

    init(tickerSymbol: String, tickerName: String, sentimentScore: Double, timestamp: String) {
        self.symbol = tickerSymbol
        self.name = tickerName
        self.sentimentScore = sentimentScore
        self.timestamp = timestamp
    }
    
    // initialize from Codable response format
    init(fromCodable codable: WatchlistResponse) {
        self.symbol = codable.symbol
        self.name = codable.name
        self.sentimentScore = (codable.score*100).rounded()/100
        self.timestamp = codable.timestamp
    }
    
//    func initFromWatchlistResponseList(list watchlistResponseList: [WatchlistResponse]) -> Void {
//
//    }
}


