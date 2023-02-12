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
                                HStack(spacing: 111){
                                    Text("Total Projected Cost")
                                    Text("$1,600")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 145){
                                    Text("Total Actual Cost")
                                    Text("$1,713")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 212){
                                    Text("Difference")
                                    Text("-$113")
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
                                HStack(spacing: 111){
                                    Text("Total Projected Cost")
                                    Text("$1,600")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 145){
                                    Text("Total Actual Cost")
                                    Text("$1,713")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 212){
                                    Text("Difference")
                                    Text("-$113")
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
                                HStack(spacing: 111){
                                    Text("Total Projected Cost")
                                    Text("$1,600")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 145){
                                    Text("Total Actual Cost")
                                    Text("$1,713")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 212){
                                    Text("Difference")
                                    Text("-$113")
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
                                HStack(spacing: 111){
                                    Text("Total Projected Cost")
                                    Text("$1,600")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 145){
                                    Text("Total Actual Cost")
                                    Text("$1,713")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 212){
                                    Text("Difference")
                                    Text("-$113")
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
                    
                    HStack(spacing: 125)
                    {
                        Text("Total Projected Cost")
                        Text("$1,600")
                    }
                    
                    HStack(spacing: 159)
                    {
                        Text("Total Actual Cost")
                        Text("$1,713")
                    }
                    
                    HStack(spacing: 222)
                    {
                        Text("Difference")
                        Text("-$113")
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
