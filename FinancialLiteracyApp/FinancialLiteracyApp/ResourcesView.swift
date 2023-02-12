//
//  ResourcesView.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import SwiftUI

struct ResourcesView: View {
    @State private var name: String = ""
    var cards: some View {
        VStack{
            Spacer()
            Divider()
                .frame(height: 50)
            Text("Debit and Credit Cards")
                .font(.title2)
                .bold()

            Resource(link: "https://www.nerdwallet.com/article/banking/checking-vs-savings", imageName: "🧐", titleText: "Checking vs. Savings Account", description: "What is the difference between a checking and savings account? Which one should you use?")
            
            Resource(link: "https://www.practicalmoneyskills.com/assets/downloads/pdfs/PracticalMoneyGuides-DebitCardBasics.pdf", imageName: "📊", titleText: "Debit Card Basics", description: "How do you use a debit card? How do you choose a debit card? How does a debit card work?")
            
            Resource(link: "https://www.nerdwallet.com/article/credit-cards/credit-cards-101", imageName: "🪪", titleText: "Credit Cards 101", description: "How do credit cards work?")
            
            Resource(link: "https://www.investopedia.com/terms/i/interest.asp", imageName: "📈", titleText: "Interest", description: "What is interest?")
            
            Resource(link: "https://www.nerdwallet.com/the-best-credit-cards/student", imageName: "💳", titleText: "Compare Credit Cards for Students", description: "Compare benefits for different student credit cards")
            
        }
    }
    var loans: some View {
        VStack{
            Spacer()
            Divider()
                .frame(height: 50)
            Text("Loans")
                .font(.title2)
                .bold()
            Resource(link: "https://www.foxbusiness.com/personal-finance/should-i-take-out-student-loan", imageName: "💰", titleText: "Should I take out a student loan?", description: "Student loan tips")
            
            Resource(link: "https://www.investopedia.com/how-to-pay-off-your-student-loans-4772422", imageName: "💸", titleText: "How to Pay Off Your Student Loans", description: "paying off student loans")
            
        }
    }
    
    var invest: some View {
        VStack{
            Spacer()
            Divider()
                .frame(height: 50)
            Text("Investing")
                .font(.title2)
                .bold()
            
            Resource(link: "https://www.schwab.com/how-to-invest/investing-basics", imageName: "🔑", titleText: "Investing Basics", description: "What is investing? Get started with investing")
            
            Resource(link: "https://www.bankrate.com/investing/best-ways-to-invest-for-college-students/", imageName: "📚", titleText: "Invest while you’re in college", description: "Getting started with investing in college")
            
            
        }
    }
    
    var miscellaneous: some View {
        VStack{
            Spacer()
            Divider()
                .frame(height: 50)
            Text("Miscellaneous")
                .font(.title2)
                .bold()
            
            Resource(link: "https://www.nerdwallet.com", imageName: "💲", titleText: "Nerdwallet", description: "Site for tips and tricks")
            
            Resource(link: "https://www.yourrichbff.com/", imageName: "🤑", titleText: "Your Rich BFF", description: "Get started with financial literacy")
            
            Resource(link: "https://herfirst100k.com/financial-feminist-podcast", imageName: "🙋‍♀️", titleText: "Financial Feminist Podcast", description: "Listen and learn!")
            
            
            
        }
    }
    var money: some View {
        VStack{
            Spacer()
            Text("Managing your Money")
            .font(.title2)
            .bold()
            Resource(link: "https://www.wellsfargo.com/goals-going-to-college/student-budget/", imageName: "👨‍🏫", titleText: "Budgeting for College Students", description: "Basic steps and tips for creating a budget")
            
            Resource(link: "https://money.usnews.com/money/retirement/articles/2013/07/24/what-college-students-should-know-about-retirement", imageName: "👵", titleText: "What College Students Should Know about Retirement", description: "Should you save for retirement? How might you get started saving for retirement?")
            Spacer()
        }
    }

    var body: some View {
        NavigationStack {
            ScrollViewReader { value in
                ScrollView {
                    Text("Table of Contents")
                        .id(0)
                        .font(.headline)
                    Button("Managing your Money") {
                        value.scrollTo(1)
                    }
                    .padding(1)
                    Button("Debit and Credit Cards") {
                        value.scrollTo(2)
                    }
                    .padding(1)
                    Button("Loans") {
                        value.scrollTo(3)
                    }
                    .padding(1)
                    
                    Button("Investing") {
                        value.scrollTo(4)
                    }
                    .padding(1)
                    Button("Miscellaneous") {
                        value.scrollTo(5)
                    }
                    .padding(1)
                    Spacer()
                    Divider()
                        .frame(height: 50)
                        .foregroundColor(Color.ui.green)
                    VStack (alignment: .leading){
                        money
                            .id(1)
                        
                        HStack{
                            Spacer()
                            Button("Back to Top"){
                                value.scrollTo(0)
                            }
                            Spacer()
                        }
                        
                        cards
                            .id(2)
                        
                        HStack{
                            Spacer()
                            Button("Back to Top"){
                                value.scrollTo(0)
                            }
                            Spacer()
                        }
                        loans
                            .id(3)
                        
                        HStack{
                            Spacer()
                            Button("Back to Top"){
                                value.scrollTo(0)
                            }
                            Spacer()
                        }
                        invest
                            .id(4)
                        HStack{
                            Spacer()
                            Button("Back to Top"){
                                value.scrollTo(0)
                            }
                            Spacer()
                        }
                        miscellaneous
                            .id(5)
                        HStack{
                            Spacer()
                            Button("Back to Top"){
                                value.scrollTo(0)
                            }
                            Spacer()
                        }
                    }

                } .navigationTitle("Resources")
                    .padding()
            }
            
            .searchable(text: $name, prompt: "Search:")
        }
    }
}

extension Color {
    static let ui = Color.UI()
    
    struct UI {
         let blue = Color("app-blue")
        let green = Color("app-green")
        let description = Color("description")
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
        VStack(alignment: .leading) {
            
                Link(destination: URL(string: link)!) {
                            Text(imageName)
                        .font(.system(size: 22))
                            Text(titleText)
                        .font(.headline)
                                .foregroundColor(Color.ui.green)
                                .bold()
                        }
                    
                        Text(description)
                .font(.subheadline)
                .foregroundColor(Color.ui.description)
                            .bold()
                    }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(0.2)
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
