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
    @State private var showingSheet = false
  
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
            Button {
                showingSheet.toggle()
            } label: {
                HStack{
                    Spacer()
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 50))
                }
                .padding()
                    
            }
            .sheet(isPresented: $showingSheet) {
                        NewPostView()
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
