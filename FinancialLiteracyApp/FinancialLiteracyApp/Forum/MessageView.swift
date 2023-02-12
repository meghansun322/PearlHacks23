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
                    if (!message.isUpVoted) {
                        message.upvote += 1
                       
                    } else {
                        message.upvote -= 1
                    }
                    
                    message.isUpVoted.toggle()
                  
                   
                } label: {
                    HStack (spacing: 2){
                        Image(systemName: "chevron.up.circle")
                        Text("\(message.upvote)")
                           
                    }
                    .foregroundColor(message.isUpVoted ? .blue : .black)
                    .fontWeight(message.isUpVoted ? .bold : .semibold)
                }
               
                Button {
                    if (!message.isDownVoted) {
                        message.downvote += 1
                       
                    } else {
                        message.downvote -= 1
                    }
                    
                    message.isDownVoted.toggle()
                  
                   
                } label: {
                    HStack (spacing: 2){
                        Image(systemName: "chevron.down.circle")
                        Text("\(message.downvote)")
                    }
                    .foregroundColor(message.isDownVoted ? .blue : .black)
                    .fontWeight(message.isDownVoted ? .bold : .semibold)
                }
               
 
                
            }
        }
        
        
    }
}


struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: Message.example_messages[0])
    }
}
