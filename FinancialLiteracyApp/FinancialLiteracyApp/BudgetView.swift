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
            .shadow(color: .gray, radius: 5, x: -1, y: 3)
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
                    HStack(spacing: 128)
                    {
                        Text("Total Projected Cost")
                        .font(.system(size: 20))
                        Text("$1,555")
                        .font(.system(size: 20))
                    }
                    
                    HStack(spacing: 155)
                    {
                        Text("Total Actual Cost")
                        .font(.system(size: 20))
                        Text("$1,493")
                        .font(.system(size: 20))
                    }
                    
                    HStack(spacing: 225)
                    {
                        Text("Difference")
                        .font(.system(size: 20))
                        Text("+$62")
                        .font(.system(size: 20))
                    }
                }
                
                HStack (spacing: 150)
                {
                    
                    Text("Housing - $852")
                    NavigationLink(destination: {HousingView()},
                       label: {
                            Text("Edit")
                                .foregroundColor(Color("app-blue"))
                    })
                }.font(.system(size: 25))
                
                HStack (spacing: 89)
                {
                    
                    Text("Transportation - $155")
                    NavigationLink(destination: {TransportationView()},
                       label: {
                            Text("Edit")
                                .foregroundColor(Color("app-blue"))
                    })
                }.font(.system(size: 25))
                
                HStack (spacing: 78)
                {
                    
                    Text("Groceries/Food - $346")
                    NavigationLink(destination: {GroceriesFoodView()},
                       label: {
                            Text("Edit")
                                .foregroundColor(Color("app-blue"))
                    })
                }.font(.system(size: 25))
                
                HStack (spacing: 185)
                {
                    
                    Text("Other - $140")
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
