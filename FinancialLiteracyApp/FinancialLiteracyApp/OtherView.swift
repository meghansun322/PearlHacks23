//
//  OtherView.swift
//  FinancialLiteracyApp
//
//  Created by Erin Byrd on 2/12/23.
//

import SwiftUI

struct OtherView: View
{
    
    var body: some View
    {
        NavigationStack{
            ScrollView{
                
                Spacer()
                    .frame(height: 25)
                
                VStack (alignment: .leading, spacing: 50){
                    
                    VStack (alignment: .leading, spacing: 15){
                        
                        GroupBox {
                            DisclosureGroup("Entertainment") {
                                HStack(spacing: 133){
                                    Text("Total Projected Cost")
                                    Text("$50")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 162){
                                    Text("Total Actual Cost")
                                    Text("$67")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 215){
                                    Text("Difference")
                                    Text("-$17")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                            }
                            .bold()
                            .foregroundColor(Color("app-green"))
                            .font(.system(size: 25))
                        }
                        .accentColor(Color("app-green"))
                    
                        GroupBox {
                            DisclosureGroup("Clothing") {
                                HStack(spacing: 135){
                                    Text("Total Projected Cost")
                                    Text("$40")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 165){
                                    Text("Total Actual Cost")
                                    Text("$26")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 212){
                                    Text("Difference")
                                    Text("+$14")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                            }
                            .bold()
                            .foregroundColor(Color("app-green"))
                            .font(.system(size: 25))
                        }
                        .accentColor(Color("app-green"))
                        
                        GroupBox {
                            DisclosureGroup("Subscriptions") {
                                HStack(spacing: 135){
                                    Text("Total Projected Cost")
                                    Text("$35")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 165){
                                    Text("Total Actual Cost")
                                    Text("$35")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 240){
                                    Text("Difference")
                                    Text("$0")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                            }
                            .bold()
                            .foregroundColor(Color("app-green"))
                            .font(.system(size: 25))
                        }
                        .accentColor(Color("app-green"))

                        GroupBox {
                            DisclosureGroup("Other") {
                                HStack(spacing: 135){
                                    Text("Total Projected Cost")
                                    Text("$30")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 167){
                                    Text("Total Actual Cost")
                                    Text("$12")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 213){
                                    Text("Difference")
                                    Text("+$18")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                            }
                            .bold()
                            .foregroundColor(Color("app-green"))
                            .font(.system(size: 25))
                        }
                        .accentColor(Color("app-green"))
                    }
                    
                    Spacer()
                        .frame(height: 1)
                }
                
                VStack {
                    
                    HStack(spacing: 140)
                    {
                        Text("Total Projected Cost")
                        Text("$155")
                    }
                    
                    HStack(spacing: 167)
                    {
                        Text("Total Actual Cost")
                        Text("$140")
                    }
                    
                    HStack(spacing: 222)
                    {
                        Text("Difference")
                        Text("+$15")
                    }
                }.font(.system(size: 20))
                
                Spacer()
                    .frame(height: 50)
                
                VStack {

                    NavigationLink(destination: {BudgetView()},
                       label: {

                            Text("Done")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .padding(.horizontal, 40)
                                .background(Color("app-green"))
                                .clipShape(Capsule())
                                .shadow(color: .gray, radius: 5, x: -1, y: 3)
                    })
                }
            }
            
            
            .navigationTitle("OTHER")
        }
        
    }
}


struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
