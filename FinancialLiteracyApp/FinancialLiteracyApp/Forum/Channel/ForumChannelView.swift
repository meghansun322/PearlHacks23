//
//  ForumChannelView.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import SwiftUI

// shows the messages in the feed
struct ForumChannelView: View {
    @State private var showingSheet = false
    @ObservedObject var channel: ChannelViewModel
    @State var searchQuery = ""
  
    var body: some View {
        NavigationStack{
            
            VStack{
                ZStack (alignment: .bottomTrailing){
                    ScrollView {
                        
                        
                        ForEach(searchResults, id: \.self) { message in
                            VStack (alignment: .leading, spacing: 10) {
                                
                                MessageView(message: MessageViewModel(message: message))
                                
                                NavigationLink {
                                    MessageRepliesView(message: MessageViewModel(message: message))
                                } label: {
                                    Text("view replies").foregroundColor(Color("app-blue"))
                                }
                                Divider()
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            
                        }
                        
                    }
                    
                    
                    Button {
                        showingSheet.toggle()
                    } label: {
                        
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 50))
                            .foregroundColor(Color("app-blue"))
                            .padding()
                        
                        
                        
                    }
                    .sheet(isPresented: $showingSheet) {
                        NewPostView(vm: channel, showingSheet: $showingSheet)
                    }
                    
                }
                
                
            }
            .searchable(text: $searchQuery)
            
            
        }
        
        
        
        .navigationTitle(channel.name.capitalized)
    }
    // Filters the channels by search query
    var searchResults: [Message] {
        if searchQuery.isEmpty {
            return channel.messages
        } else {
            return channel.messages.filter { $0.message.lowercased().contains(searchQuery.lowercased())}
        }
    }
            
        }
    
        



struct ForumChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ForumChannelView(channel: ChannelViewModel(channel: Channel.example))
    }
}
