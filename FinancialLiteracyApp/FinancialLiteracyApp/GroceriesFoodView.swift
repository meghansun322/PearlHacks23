//
//  GroceriesFoodView.swift
//  FinancialLiteracyApp
//
//  Created by Erin Byrd on 2/12/23.
//

import SwiftUI

struct GroceriesFoodView: View
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
                            DisclosureGroup("Groceries") {
                                HStack(spacing: 125){
                                    Text("Total Projected Cost")
                                    Text("$220")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 155){
                                    Text("Total Actual Cost")
                                    Text("$217")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 223){
                                    Text("Difference")
                                    Text("+$3")
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
                            DisclosureGroup("Dining Out") {
                                HStack(spacing: 125){
                                    Text("Total Projected Cost")
                                    Text("$100")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 155){
                                    Text("Total Actual Cost")
                                    Text("$124")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 215){
                                    Text("Difference")
                                    Text("-$24")
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
                                HStack(spacing: 137){
                                    Text("Total Projected Cost")
                                    Text("$15")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 175){
                                    Text("Total Actual Cost")
                                    Text("$5")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 212){
                                    Text("Difference")
                                    Text("+$10")
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
                    
                    HStack(spacing: 136)
                    {
                        Text("Total Projected Cost")
                        Text("$335")
                    }
                    
                    HStack(spacing: 165)
                    {
                        Text("Total Actual Cost")
                        Text("$346")
                    }
                    
                    HStack(spacing: 230)
                    {
                        Text("Difference")
                        Text("-$11")
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
            
            
            .navigationTitle("GROCERIES/FOOD")
        }
        
    }
}


struct GroceriesFoodView_Previews: PreviewProvider {
    static var previews: some View {
        GroceriesFoodView()
    }
}
