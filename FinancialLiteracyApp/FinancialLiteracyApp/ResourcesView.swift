//
//  ResourcesView.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import SwiftUI

struct ResourcesView: View {
    @State private var name: String = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack (alignment: .leading){
                    TextField("Search:", text: $name)
                        .navigationTitle("Resources")
                    VStack (alignment: .leading){
                        Text("The Basics")
                            .font(.title)
                            .bold()
                        Definition(title: "What is Credit?", description: "Description")
                        Definition(title: "Cashback", description: "Description")
                        Definition(title: "etc", description: "Description")
                    }
                    
                    VStack (alignment: .leading){
                        Text("College Help")
                            .font(.title)
                            .bold()
                        // loans, scholarships etc
                        
                        // credit cards
                        // investing
                        // miscellaneous
                        // podcasts
                        // books
                        Resource(link: "https://www.nerdwallet.com/the-best-credit-cards", imageName: "nerdwallet", titleText: "Compare Credit Cards", description: "Description alkjsdfkljadslkfjal;ksdfjaskldfjlka;jdslfkjaalksdjflaksdjf;klasjdfklajs;ldfkajsklfd")
                        
                        Text("Additional Resources")
                            .font(.title)
                            .bold()
                        Resource(link: "https://www.nerdwallet.com/the-best-credit-cards", imageName: "nerdwallet", titleText: "Compare Credit Cards", description: "Description alkjsdfkljadslkfjal;ksdfjaskldfjlka;jdslfkjaalksdjflaksdjf;klasjdfklajs;ldfkajsklfd")
                        Resource(link: "https://www.nerdwallet.com/the-best-credit-cards", imageName: "nerdwallet", titleText: "Compare Credit Cards", description: "Description alkjsdfkljadslkfjal;ksdfjaskldfjlka;jdslfkjaalksdjflaksdjf;klasjdfklajs;ldfkajsklfd")


                    }
                }
            }
        }
        
    }
}

extension Color {
    static let ui = Color.UI()
    
    struct UI {
         let blue = Color("app-blue")
        let green = Color("app-green")
    }
}
struct ResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesView()
    }
}

struct Resource: View {
    var link: String
    var imageName: String
    var titleText: String
    var description: String
    var body: some View {
        HStack(){
            Link(destination: URL(string: link)!) {
                VStack {
                    HStack {
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height:40)
                        Text(titleText)
                            .font(.title)
                            .foregroundColor(Color.ui.blue)
                    }
                    Text(description)
                        .font(.headline)
                        .foregroundColor(Color.ui.green)
                }
            }
        }
    }
}

struct Definition: View {
    var title: String
    var description: String
    var body: some View {
        VStack (alignment: .leading){
            Text(title)
                .font(.title2)
            Text(description)
                .font(.footnote)
        }
    }
}
