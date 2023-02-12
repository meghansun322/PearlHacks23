//
//  BudgetCategoryInfoView.swift
//  FinancialLiteracyApp
//
//  Created by Erin Byrd on 2/11/23.
//

import SwiftUI

struct HousingView: View
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
                            DisclosureGroup("Rent") {
                                HStack(spacing: 120){
                                    Text("Total Projected Cost")
                                    Text("$750")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 150){
                                    Text("Total Actual Cost")
                                    Text("$750")
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
                    
                        GroupBox {
                            DisclosureGroup("Electricity") {
                                HStack(spacing: 135){
                                    Text("Total Projected Cost")
                                    Text("$40")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 165){
                                    Text("Total Actual Cost")
                                    Text("$35")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 225){
                                    Text("Difference")
                                    Text("+$5")
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
                            DisclosureGroup("Water/Sewage") {
                                HStack(spacing: 125){
                                    Text("Total Projected Cost")
                                    Text("$20")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 155){
                                    Text("Total Actual Cost")
                                    Text("$22")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 215){
                                    Text("Difference")
                                    Text("-$2")
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
                            DisclosureGroup("Wi-Fi") {
                                HStack(spacing: 111){
                                    Text("Total Projected Cost")
                                    Text("$20")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 145){
                                    Text("Total Actual Cost")
                                    Text("$20")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 212){
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
                            DisclosureGroup("Trash") {
                                HStack(spacing: 111){
                                    Text("Total Projected Cost")
                                    Text("$25")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 145){
                                    Text("Total Actual Cost")
                                    Text("$25")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 215){
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
                            DisclosureGroup("Maintenance") {
                                HStack(spacing: 138){
                                    Text("Total Projected Cost")
                                    Text("$30")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 180){
                                    Text("Total Actual Cost")
                                    Text("$0")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 212){
                                    Text("Difference")
                                    Text("+$30")
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
                                HStack(spacing: 140){
                                    Text("Total Projected Cost")
                                    Text("$15")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 175){
                                    Text("Total Actual Cost")
                                    Text("$0")
                                }
                                .font(.system(size: 20))
                                .foregroundColor(Color(.black))
                                
                                HStack(spacing: 212){
                                    Text("Difference")
                                    Text("+$15")
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
                        Text("$900")
                    }
                    
                    HStack(spacing: 168)
                    {
                        Text("Total Actual Cost")
                        Text("$852")
                    }
                    
                    HStack(spacing: 222)
                    {
                        Text("Difference")
                        Text("+$48")
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
            
            
            .navigationTitle("HOUSING")
        }
        
    }
}


struct HousingView_Previews: PreviewProvider {
    static var previews: some View {
        HousingView()
    }
}
