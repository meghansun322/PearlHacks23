//
//  SplashScreenView.swift
//  FinancialLiteracyApp
//
//  Created by Sophie Jiang on 2/12/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.70
    @State private var opacity = 0.6
    var body: some View {
        if self.isActive {
            ContentView()
        } else {
            ZStack {
                Color("app-green")
                    .ignoresSafeArea()
                VStack{
                    VStack{
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                        Text("CollegeWallet")
                            .font(Font.custom("Thonburi-Bold", size: 26))
                            .foregroundColor(Color("splash-text"))
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.0)){
                            self.size = 0.75
                            self.opacity = 1.0
                        }
                    }
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

