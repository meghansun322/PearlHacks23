//
//  MessageRepliesView.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import SwiftUI

// View of Selected Message and it's replies
struct MessageRepliesView: View {
    @State var user_reply: String = ""
    
    @ObservedObject var message: MessageViewModel
    
    var body: some View {
  
            VStack (alignment: .leading, spacing: 10) {
                
                MessageView(message: message)
             
                Divider()
                Text("Replies")
                    .font(.title2)
                
                replies
                
                Spacer()
                TextField("Add a reply...", text: $user_reply).textFieldStyle(RoundedBorderTextFieldStyle())
                    .onSubmit{
                        message.addNewReply(new: Reply(user: "money-meghan322", message: user_reply))
                        user_reply = "'"
                    }
            }
            .navigationBarTitle("", displayMode: .inline) // remove spacing for title
            .padding()
            
        }
    
    var replies: some View {
        
        VStack (alignment: .leading, spacing: 10){
            if (message.replies.isEmpty){
                Text("No Replies")
                    .foregroundColor(.secondary)
            } else {
                ForEach(message.replies, id: \.self) { reply in
                    ReplyView(reply: reply)
                }
            }
        }
    }
    
        
}

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(20)
            .shadow(color: .gray, radius: 10)
    }
    
    
    
struct MessageRepliesView_Previews: PreviewProvider {
    static var previews: some View {
        MessageRepliesView(message:MessageViewModel(message:  Message.example_message))
    }
}
}
