//
//  MessageView.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import SwiftUI

// Component for any message
struct MessageView: View {
    @State var message: Message
    
    var body: some View {
        VStack (alignment: .leading, spacing: 5){
         
            Text(message.user)
                .bold().font(.title3)
            Text(message.message)
            
            
            HStack {
                Button {
                    if (!message.isUpvoted) {
                        message.upvote += 1
                       
                    } else {
                        message.upvote -= 1
                    }
                    
                    message.isUpvoted.toggle()
                  
                   
                } label: {
                    HStack (spacing: 2){
                        Image(systemName: "chevron.up.circle")
                        Text("\(message.upvote)")
                           
                    }
                    .foregroundColor(message.isUpvoted ? .blue : .black)
                    .fontWeight(message.isUpvoted ? .bold : .semibold)
                }
               
                Button {
                    if (!message.isDownvoted) {
                        message.downvote += 1
                       
                    } else {
                        message.downvote -= 1
                    }
                    
                    message.isDownvoted.toggle()
                  
                   
                } label: {
                    HStack (spacing: 2){
                        Image(systemName: "chevron.down.circle")
                        Text("\(message.downvote)")
                    }
                    .foregroundColor(message.isDownvoted ? .blue : .black)
                    .fontWeight(message.isDownvoted ? .bold : .semibold)
                }
               
 
                
            }
        }
        
        
    }
}


struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: Message.example_message)
    }
}
