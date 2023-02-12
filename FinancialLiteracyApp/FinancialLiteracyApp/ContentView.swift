//
//  ContentView.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            TabView {
                ForumView()
                    .tabItem {
                        Label("Forum", systemImage: "message")
                    }
                
                BudgetView()
                    .tabItem {
                        Label("Budget", systemImage: "dollarsign.circle")
                    }
                
                ResourcesView()
                    .tabItem {
                        Label("Resources", systemImage: "doc.text")
                    }
                
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
                    }
                
                
            }
            .accentColor(Color("app-green"))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
