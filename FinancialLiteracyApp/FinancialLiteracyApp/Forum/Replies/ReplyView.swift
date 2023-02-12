//
//  ReplyView.swift
//  FinancialLiteracyApp
//
//  Created by Meghan Sun on 2/12/23.
//

import SwiftUI

struct ReplyView: View {
    var reply: Reply
    var body: some View {
        VStack (alignment: .leading, spacing: 5){
            
            Text(reply.user)
                .bold().font(.title3)
            Text(reply.message)
        }
    }
}

struct ReplyView_Previews: PreviewProvider {
    static var previews: some View {
        ReplyView(reply: Reply.example_replies[0])
    }
}
