//
//  TransportationView.swift
//  FinancialLiteracyApp
//
//  Created by Erin Byrd on 2/12/23.
//

import SwiftUI

struct TransportationView: View
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
                            DisclosureGroup("Gas") {
                                HStack(spacing: 120){
                                    Text("Total Projected Cost")
                                    Text("$120")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 150){
                                    Text("Total Actual Cost")
                                    Text("$127")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 217){
                                    Text("Difference")
                                    Text("-$7")
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
                            DisclosureGroup("Maintenance") {
                                HStack(spacing: 135){
                                    Text("Total Projected Cost")
                                    Text("$30")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 165){
                                    Text("Total Actual Cost")
                                    Text("$28")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 225){
                                    Text("Difference")
                                    Text("+$2")
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
                                HStack(spacing: 133){
                                    Text("Total Projected Cost")
                                    Text("$15")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 170){
                                    Text("Total Actual Cost")
                                    Text("$0")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 230){
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
                    }
                    
                    Spacer()
                        .frame(height: 1)
                }
                
                VStack {
                    
                    HStack(spacing: 140)
                    {
                        Text("Total Projected Cost")
                        Text("$165")
                    }
                    
                    HStack(spacing: 170)
                    {
                        Text("Total Actual Cost")
                        Text("$155")
                    }
                    
                    HStack(spacing: 227)
                    {
                        Text("Difference")
                        Text("+$10")
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
            
            
            .navigationTitle("TRANSPORTATION")
        }
        
    }
}


struct TransportationView_Previews: PreviewProvider {
    static var previews: some View {
        TransportationView()
    }
}
