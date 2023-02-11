//
//  ForumView.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import SwiftUI

// Displays the channels
struct ForumView: View {
    
    @State var searchQuery = ""
    var channels = ["budgeting", "investing", "general"]
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading){
                TextField("Search for a community...", text: $searchQuery)
                    .foregroundColor(.black)
                    .padding(.bottom)
                
                
                Text("Communities")
                    .font(.title)
                
                Divider()
                ForEach(channels, id: \.self) { channel in
                    // On click, changes view to ForumChannel View
                    NavigationLink {
                        ForumChannelView(name: channel)
                  
                    } label: {
                        // The view
                        Text(channel.uppercased())
                            .bold()
                            .padding(.vertical)
                            .foregroundColor(.secondary)
                          
                    }
                    Divider()
           
                }
  
                Spacer()
                
              
            }
            .padding()
            .navigationTitle("Forum")
        }
    }
}

struct ForumView_Previews: PreviewProvider {
    static var previews: some View {
        ForumView()
    }
}
