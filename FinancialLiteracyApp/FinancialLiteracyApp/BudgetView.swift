//
//  BudgetView.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import SwiftUI

struct GreenButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color("app-green"))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

struct BudgetView: View
{
    
    var body: some View
    {
        NavigationStack
        {
            
            VStack (alignment: .leading, spacing: 50)
            {
                VStack (alignment: .leading, spacing: 10)
                {
                    
                    Text("Monthly Summary")
                        .bold()
                        .underline()
                        .font(.system(size: 25))
                    HStack(spacing: 125)
                    {
                        Text("Total Projected Cost")
                        .font(.system(size: 20))
                        Text("$1,600")
                        .font(.system(size: 20))
                    }
                    
                    HStack(spacing: 159)
                    {
                        Text("Total Actual Cost")
                        .font(.system(size: 20))
                        Text("$1,713")
                        .font(.system(size: 20))
                    }
                    
                    HStack(spacing: 222)
                    {
                        Text("Difference")
                        .font(.system(size: 20))
                        Text("-$113")
                        .font(.system(size: 20))
                    }
                }
                
                HStack (spacing: 150)
                {
                    
                    Text("Housing - $850")
                    NavigationLink(destination: {HousingView()},
                       label: {
                            Text("Edit")
                                .foregroundColor(Color("app-blue"))
                    })
                }.font(.system(size: 25))
                
                HStack (spacing: 89)
                {
                    
                    Text("Transportation - $120")
                    NavigationLink(destination: {TransportationView()},
                       label: {
                            Text("Edit")
                                .foregroundColor(Color("app-blue"))
                    })
                }.font(.system(size: 25))
                
                HStack (spacing: 80)
                {
                    
                    Text("Groceries/Food - $415")
                    NavigationLink(destination: {GroceriesFoodView()},
                       label: {
                            Text("Edit")
                                .foregroundColor(Color("app-blue"))
                    })
                }.font(.system(size: 25))
                
                HStack (spacing: 185)
                {
                    
                    Text("Other - $215")
                    NavigationLink(destination: {OtherView()},
                       label: {
                            Text("Edit")
                                .foregroundColor(Color("app-blue"))
                    })
                }.font(.system(size: 25))
            
                
            }
            Spacer()
                    .frame(height: 50)
            
            VStack ()
            {

                Button("Add Category") {
                }
                .buttonStyle(GreenButton())
            }
            
            
            .navigationTitle("Budget")
        }
        
    }
}


struct BudgetView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetView()
    }
}
