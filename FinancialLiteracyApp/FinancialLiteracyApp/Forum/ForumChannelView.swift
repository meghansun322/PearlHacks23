//
//  ForumChannelView.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import SwiftUI

// shows the messages in the feed
struct ForumChannelView: View {
    var name: String
  
    var body: some View {
        NavigationStack{
            
                ScrollView {
                   
                    
                    ForEach(Message.example_messages, id: \.self) { message in
                        VStack (alignment: .leading, spacing: 10) {
                            
                            MessageView(message: message)
                           
                            NavigationLink {
                                MessageRepliesView(message: message)
                            } label: {
                                Text("view replies")
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
              
                    }

                }
                .navigationTitle(name.uppercased())
                
            }
            
        }
    }



struct ForumChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ForumChannelView(name: "Investing")
    }
}
