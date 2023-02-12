//
//  Model.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import Foundation


struct Forum: Hashable {
    var channels: [Channel]
    
    static var example: [Channel] = [
        Channel(name: "Investing", messages: [Message(user: "stocks_sadie3", message: "Who's checked the stock market today", upvote: 1, downvote: 23),
                                              Message(user: "clueless_claire342", message: "I want to invest in the stock market, but I don't know where to start. Please send help", upvote: 22, downvote: 0),
                                              Message(user: "expert_emily99", message: "I loved @Financial_Feminist Podcast! Super helpful and insightful. Please feel free to reach out to me whenever. #womensupportingwomen #womeninfintech", upvote: 40, downvote: 0)]) ,
        
        Channel(name: "Budgeting", messages: [Message(user: "budget_bridget45", message: "Just spent some time personalizing my budget on College Wallet. This app is soooooo cool!!", upvote: 1, downvote: 23),
                                              Message(user: "clueless_claire342", message: "My paycheck just came in. Should I spend all of my money on Taylor Swift tickets?", upvote: 1, downvote: 10),
                                              Message(user: "silly_sophie1", message: "I dreamt that I won the lottery to only realize that I have no money. I need to start budgeting ASAP", upvote: 40, downvote: 0)]),
        
        Channel(name: "General", messages: [Message(user: "extra_cash_erin131", message: "Just spent some time personalizing my budget on College Wallet. This app is soooooo cool!!", upvote: 1, downvote: 23),
                                              Message(user: "money_meghan322", message: "My paycheck just came in. Should I spend all of my money on Taylor Swift tickets?", upvote: 1, downvote: 10),
                                              Message(user: "silly_sophie1", message: "I dreamt that I won the lottery to only realize that I have no money. I need to start budgeting ASAP", upvote: 40, downvote: 0)]),
        
        
    ]
}

struct Channel: Hashable {
    var name: String
    var messages: [Message]
    
    static var example: Channel =  Channel(name: "Investing", messages: [Message(user: "stocks_sadie3", message: "Who's checked the stock market today", upvote: 1, downvote: 23),
                                                                         Message(user: "clueless_claire342", message: "I want to invest in the stock market, but I don't know where to start. Please send help", upvote: 22, downvote: 0),
                                                                         Message(user: "expert_emily99", message: "I loved @Financial_Feminist Podcast! Super helpful and insightful. Please feel free to reach out to me whenever. #womensupportingwomen #womeninfintech", upvote: 40, downvote: 0)])
}

struct Message: Hashable {
    
    var user: String
    var message: String
    var upvote: Int
    var downvote: Int
    var isUpVoted: Bool = false
    var isDownVoted: Bool = false
    
    
    static var example_messages: [Message] = [Message(user: "meghansun322", message: "I loved @Financial_Feminist Podcasts! Super helpful!", upvote: 15, downvote: 2),
                                         Message(user: "meghansun322", message: "I loved @Financial_Feminist Podcasts! Super helpful!", upvote: 22, downvote: 7),
                                         Message(user: "meghansun322", message: "I loved @Financial_Feminist Podcasts! Super helpful!", upvote: 21, downvote: 21)]
    
    static var example_replies: [Message] = [Message(user: "claire123", message: "great advice", upvote: 0, downvote: 0), Message(user: "bridget", message: "love it!!!", upvote: 0, downvote: 0)]
    
}


