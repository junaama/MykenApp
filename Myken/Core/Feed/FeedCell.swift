//
//  FeedCell.swift
//  Myken
//
//  Created by NAAMA on 7/15/24.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            // post image
            Image("StockMan3").resizable().scaledToFill().frame(height:400).clipShape(Rectangle())
            HStack {
                Text("Jonathon M. ")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                Text("by friend ")
                    .font(.footnote) +
                Text("Maddie")
                    .font(.footnote)
                    .fontWeight(.semibold)
            }.frame(maxWidth:.infinity, alignment:.leading).padding(8)
            // action buttons
            HStack(spacing: 16) {
                Button {
                    print("View details")
                } label: {
                    Image(systemName: "bag").imageScale(.large)
                }
                Button {
                    print("Like post")
                } label: {
                    Image(systemName: "heart").imageScale(.large)
                }
                Button {
                    print("Comment")
                } label: {
                    Image(systemName: "bubble.left").imageScale(.large)
                }
                Button {
                    print("Share")
                } label: {
                    Image(systemName: "paperplane").imageScale(.large)
                }
//                Spacer()
            }.frame(maxWidth: .infinity, alignment:.trailing)
//                .padding(.leading, 8)
                .padding(8)
                .foregroundColor(.black)
                
            
            // likes label
            
            // caption label
        }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/).padding()
    }
}

#Preview {
    FeedCell()
}
