//
//  FeedView.swift
//  Myken
//
//  Created by NAAMA on 7/15/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(0...10, id: \.self) {
                        post in FeedCell()
                    }
                    
                }
                
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement:.topBarLeading) {
//                    Image(systemName: "house")
//                        .resizable()
//                        .frame(width:32, height: 32)
                    Text("MYKEN")
                }
                ToolbarItem(placement:.topBarTrailing) {
                    Image(systemName: "house")
                        .resizable()
                        .frame(width:32, height: 32)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
