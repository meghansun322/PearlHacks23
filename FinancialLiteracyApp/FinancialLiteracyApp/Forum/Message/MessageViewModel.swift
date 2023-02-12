//
//  MessageViewModel.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/12/23.
//

import Foundation

class MessageViewModel: ObservableObject {
    
    @Published var model: Message
    
    init(message: Message) {
        self.model = message
    }
    
    var user: String {
        return self.model.user
    }
    
    var message: String {
        return self.model.message
    }
    
    var upvote: Int {
        return self.model.upvote
    }
    
    var downvote: Int {
        return self.model.downvote
    }
    
    var isUpvoted: Bool {
        return self.model.isUpvoted
    }
    
    var isDownvoted: Bool {
        return self.model.isDownvoted
    }
    
    var replies: [Reply] {
        return self.model.replies
    }
    
    func toggleUpvote() {
        self.model.isUpvoted.toggle()
    }
    
    func toggleDownvote() {
        self.model.isDownvoted.toggle()
    }
    
    func increaseUpvote() {
        self.model.upvote += 1
    }
    
    func decreaseUpvote() {
        self.model.upvote -= 1
    }
    
    func increaseDownvote() {
        self.model.downvote += 1
    }
    
    func decreaseDownvote() {
        self.model.downvote -= 1
    }
    
    func addNewReply(new: Reply) -> Void {
        self.model.replies.append(new)
    }
    
    
}
