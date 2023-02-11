//
//  ResourcesView.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import SwiftUI

struct ResourcesView: View {
    var body: some View {
        NavigationStack {
            Text("")
                .navigationTitle("Resources")
            HStack(){
                Image("nerdwallet")
                    .resizable()
                    .scaledToFit()
            }
        }
            
        
    }
}

struct ResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesView()
    }
}
