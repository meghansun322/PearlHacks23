//
//  NewPostView.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import SwiftUI

struct NewPostView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State var theMessage: String = ""
    @ObservedObject var vm: ChannelViewModel
    @Binding var showingSheet: Bool
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Type your message...", text: $theMessage,  axis: .vertical)
                        .lineLimit(5...)
                }
                
              
                    Button {
                        vm.addNewMessage(new: (Message(user: "money-meghan322", message: theMessage, upvote: 0, downvote: 0, isUpvoted: false, isDownvoted: false)))
                        showingSheet = false
                    } label: {
                        Text("Post!")
                    }
                
            }
            .navigationBarTitle("Create a Post")
        }
    }
    
    
    
    
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView(vm: ChannelViewModel(channel: Channel.example), showingSheet: .constant(true))
    }
}
