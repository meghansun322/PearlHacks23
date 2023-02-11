//
//  Model.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import Foundation


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


