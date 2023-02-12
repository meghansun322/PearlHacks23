//
//  ForumViewModel.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import Foundation

class ForumViewModel: ObservableObject {
    
    @Published var channels: [Channel] = []
    
    init(){

        load()

    }
    
    // load data
    func load(){
        let decoder = JSONDecoder()
        
        if let url = Bundle.main.url(forResource: "college-wallet-data.json", withExtension: nil) {
            do {
               
                let data = try Data(contentsOf: url)
               
                let decodedData = try decoder.decode(Forum.self, from: data).channels
                DispatchQueue.main.async {
                    self.channels = decodedData
                }
            } catch {
                print("error: \(error)")
            }
        }
    }

}
