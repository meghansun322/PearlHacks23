//
//  MessageRepliesView.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import SwiftUI

// View of Selected Message and it's replies
struct MessageRepliesView: View {
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
            }
            .navigationBarTitle("", displayMode: .inline) // remove spacing for title
            .padding()
            
        }
    
        
}



struct MessageRepliesView_Previews: PreviewProvider {
    static var previews: some View {
        MessageRepliesView(message: Message.example_messages[0])
    }
}
