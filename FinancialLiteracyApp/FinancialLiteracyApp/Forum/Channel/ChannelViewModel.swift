//
//  ChannelViewModel.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//
import Foundation

class ChannelViewModel: ObservableObject {
    
    
    
    @Published var model: Channel
    init(channel: Channel) {
        self.model = channel
    }
    
    var name: String {
        return self.model.name
    }
    
    var messages: [Message] {
        return self.model.messages
    }
    func addNewMessage(new: Message) -> Void {
        self.model.messages.insert(new, at: 0)
    }
}
