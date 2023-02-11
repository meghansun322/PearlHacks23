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
    }
}

struct ProfileView: View {
    var body: some View {
            NavigationStack{
                VStack (spacing: 25){
                    Divider()
                    HStack{
                        Text("Meghan Sun").font(.title)
                        Spacer()
                        Text("57 points").font(.title2)
                    }
                    Image("Meghan").resizable().scaledToFit().clipShape(Circle())
    
                    VStack (alignment: .leading) {
                        Text("Hi! I go to UNC and I'm currently interested in learning about personal finance, investing, and the financial literacy knowledge gap.")
                    }
                    Spacer()
                    Button("Edit Profile") {
                        // switch to edit profile view here
                    }
                    .buttonStyle(BlueButton())
                        

                    
                }
                .navigationTitle("My Profile")
                .padding()
            }
        }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
