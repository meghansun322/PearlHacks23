//
//  Model.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import Foundation



struct Forum: Hashable, Codable {
    
 
    var channels: [Channel]
    

}

struct Channel: Hashable, Codable {
    var name: String
    var messages: [Message]
    
    static var example: Channel =  Channel(name: "Investing", messages: [Message(user: "stocks_sadie3", message: "Who's checked the stock market today", upvote: 1, downvote: 23,  isUpvoted: false, isDownvoted: false),
                                                                         Message(user: "clueless_claire342", message: "I want to invest in the stock market, but I don't know where to start. Please send help", upvote: 22, downvote: 0,  isUpvoted: false, isDownvoted: false),
                                                                         Message(user: "expert_emily99", message: "I loved @Financial_Feminist Podcast! Super helpful and insightful. Please feel free to reach out to me whenever. #womensupportingwomen #womeninfintech", upvote: 40, downvote: 0,  isUpvoted: false, isDownvoted: false)])
}

struct Message: Hashable, Codable {
    
    var user: String
    var message: String
    var upvote: Int
    var downvote: Int
    var isUpvoted: Bool
    var isDownvoted: Bool
    
    
    static var example_messages: [Message] = [Message(user: "meghansun322", message: "I loved @Financial_Feminist Podcasts! Super helpful!", upvote: 15, downvote: 2, isUpvoted: false, isDownvoted: false),
                                         Message(user: "meghansun322", message: "I loved @Financial_Feminist Podcasts! Super helpful!", upvote: 22, downvote: 7, isUpvoted: false, isDownvoted: false),
                                         Message(user: "meghansun322", message: "I loved @Financial_Feminist Podcasts! Super helpful!", upvote: 21, downvote: 21, isUpvoted: false, isDownvoted: false)]
    
    static var example_replies: [Message] = [Message(user: "claire123", message: "great advice", upvote: 0, downvote: 0,  isUpvoted: false, isDownvoted: false), Message(user: "bridget", message: "love it!!!", upvote: 0, downvote: 0, isUpvoted: false, isDownvoted: false)]
    
}


