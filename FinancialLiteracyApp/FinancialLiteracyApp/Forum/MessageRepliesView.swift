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
    var message: Message
    
    var body: some View {
  
            VStack (alignment: .leading, spacing: 10) {
                
                MessageView(message: message)
             
                Divider()
                Text("Replies")
                    .font(.title2)
                
                ForEach(Message.example_replies, id: \.self) { reply in
                    MessageView(message: reply)
                }
                
                Spacer()
                TextField("Add a reply...", text: $user_reply).textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .navigationBarTitle("", displayMode: .inline) // remove spacing for title
            .padding()
            
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
        MessageRepliesView(message: Message.example_message)
    }
}
}
