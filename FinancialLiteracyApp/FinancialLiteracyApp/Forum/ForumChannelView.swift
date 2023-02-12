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
  
    var body: some View {
        NavigationStack{
            
                ScrollView {
                   
                    
                    ForEach(channel.messages, id: \.self) { message in
                        VStack (alignment: .leading, spacing: 10) {
                            
                            MessageView(message: message)
                           
                            NavigationLink {
                                MessageRepliesView(message: message)
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
                HStack{
                    Spacer()
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 50))
                        .foregroundColor(Color("app-blue"))
                }
                .padding()
                    
            }
            .sheet(isPresented: $showingSheet) {
                NewPostView(vm: channel, showingSheet: $showingSheet)
            }
            
            .navigationTitle(channel.name.capitalized)
//            .toolbarBackground(
//                            Color("app-green"),
//                            for: .navigationBar)
//            .toolbarBackground(.visible, for: .navigationBar)
                
            }
            
        }
    }



struct ForumChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ForumChannelView(channel: ChannelViewModel(channel: Channel.example))
    }
}
