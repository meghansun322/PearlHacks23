//
//  ForumView.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import SwiftUI

// Displays the channels
struct ForumView: View {
    
    @StateObject var vm: ForumViewModel = ForumViewModel()
    @State var searchQuery = ""
  
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading){
                
                Text("Communities")
                    .font(.title)
                
                Divider()
                
                ScrollView {
                    VStack (alignment: .leading){
                        ForEach(searchResults, id: \.self) { channel in
                            // On click, changes view to ForumChannel View
                            NavigationLink {
                                ForumChannelView(channel: ChannelViewModel(channel: channel))
                                
                            } label: {
                                // The view
                                Text(channel.name.uppercased())
                                    .bold()
                                    .padding(.vertical)
                                    .foregroundColor(.secondary)
                                
                            }
                            Divider()
                            
                        }
                    }
                }
  
                Spacer()
                
              
            }
            .padding()
            .navigationTitle("Forum")
            .searchable(text: $searchQuery)
            }
        }
    // Filters the channels by search query
    var searchResults: [Channel] {
        if searchQuery.isEmpty {
            return vm.channels
        } else {
            return vm.channels.filter { $0.name.contains(searchQuery)}
        }
    }
    }
    
    

struct ForumView_Previews: PreviewProvider {
    static var previews: some View {
        ForumView()
    }
}
