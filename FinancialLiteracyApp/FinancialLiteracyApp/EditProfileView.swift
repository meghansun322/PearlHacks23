//
//  EditProfileView.swift
//  FinancialLiteracyApp
//
//  Created by Sadie Amato on 2/11/23.
//

import SwiftUI

struct EditProfileView: View {
    
    var ending_section: some View {
        VStack{
            Text("**Handle**: @money-meghan322").frame(maxWidth: .infinity, alignment: .leading)
            Text("**Email**: mlsun@ad.unc.edu").frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            Divider()
            HStack{
                Text("Logout").font(.title3)
                Spacer()
                Text("Delete Account")
                    .foregroundColor(.red)
                    .font(.title3)
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 10) {
                HStack{
                    Text("Profile Picture").font(.title2).bold()
                    Spacer()
                    Text("Edit").foregroundColor(Color("app-blue")).underline()
                }
                Image("Meghan").resizable().scaledToFit().clipShape(Circle()).shadow(color: Color("app-blue"), radius: 5, x: -2, y: 5)
                Divider()
            
                HStack{
                    Text("Bio").font(.title2).bold()
                    Spacer()
                    Text("Edit").foregroundColor(Color("app-blue")).underline()
                }
                Text("Hi! 👋 I go to UNC and I'm currently interested in learning about personal finance, investing, and the financial literacy knowledge gap.")
                Divider()
                HStack{
                    Text("Account Details").font(.title2).bold()
                    Spacer()
                    Text("Edit").foregroundColor(Color("app-blue")).underline()
                }
                ending_section
                
            }
            
            
            .navigationTitle("Edit Profile")
            .padding()
        }
    
        
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
