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
    
    // used in previews
    static var example: Channel =  Channel(name: "Investing", messages: [Message(user: "stocks-sadie3", message: "Who's checked the stock market today", upvote: 1, downvote: 23,  isUpvoted: false, isDownvoted: false, replies: Reply.example_replies),
                                                                         Message(user: "clueless-claire342", message: "I want to invest in the stock market, but I don't know where to start. Please send help", upvote: 22, downvote: 0,  isUpvoted: false, isDownvoted: false, replies: Reply.example_replies),
                                                                         Message(user: "expert_emily99", message: "I loved @Financial-Feminist Podcast! Super helpful and insightful. Please feel free to reach out to me whenever. #womensupportingwomen #womeninfintech", upvote: 40, downvote: 0,  isUpvoted: false, isDownvoted: false, replies: [])])
}

struct Message: Hashable, Codable {
    
    var user: String
    var message: String
    var upvote: Int
    var downvote: Int
    var isUpvoted: Bool
    var isDownvoted: Bool
    var replies: [Reply]
    
    
    static var example_message: Message = Message(user: "meghansun322", message: "I loved @Financial_Feminist Podcasts! Super helpful!", upvote: 15, downvote: 2, isUpvoted: false, isDownvoted: false, replies: Reply.example_replies
    )
    
    
    
}

struct Reply: Hashable, Codable {
    var user: String
    var message: String
    
    static var example_replies: [Reply] = [Reply(user: "claire123", message: "great advice"), Reply(user: "bridget", message: "love it!!!")]
}



