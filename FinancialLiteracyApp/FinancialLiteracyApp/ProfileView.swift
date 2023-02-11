//
//  ProfileView.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import SwiftUI

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color("app-blue"))
            .foregroundColor(.white)
            .clipShape(Capsule())
            .shadow(color: .gray, radius: 5, x: -1, y: 3)
    }
}

struct ProfileView: View {
    @State private var showingSheet = false
    var body: some View {
        NavigationStack{
            VStack (spacing: 10){
                Divider()
                HStack{
                    Text("Meghan Sun").font(.title)
                    Spacer()
                    Text("🔥57 points").font(.title2)
                }
                HStack{
                    Text("@meghansun322")
                    Spacer()
                }
                VStack (spacing: 25){
                    Image("Meghan").resizable().scaledToFit().clipShape(Circle()).shadow(color: Color("app-blue"), radius: 5, x: -2, y: 5)
                    
                    VStack (alignment: .leading) {
                        Text("Hi! 👋 I go to UNC and I'm currently interested in learning about personal finance, investing, and the financial literacy knowledge gap.")
                    }
                    Spacer()
                    Button {
                        showingSheet.toggle()
                    } label: {
                        Text("Edit Profile")
                    }
                    .padding()
                    
                }
                
                .sheet(isPresented: $showingSheet) {
                    NewPostView()
                }
            }
            .buttonStyle(BlueButton())
            .navigationTitle("👤My Profile")
            .padding()
            
        }
        
        
        
    }
    
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
    }
}
