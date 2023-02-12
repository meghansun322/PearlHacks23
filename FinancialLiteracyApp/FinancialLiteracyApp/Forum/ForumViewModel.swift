//
//  ForumViewModel.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/11/23.
//

import Foundation

class ForumViewModel: ObservableObject {
    
    @Published var channels: [Channel] = Forum.example
}
