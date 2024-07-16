//
//  UploadPostSubmitView.swift
//  Myken
//
//  Created by NAAMA on 7/15/24.
//

import SwiftUI

struct UploadPostSubmitView: View {
    @State private var caption = ""
    @StateObject var viewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    @State private var isPrivate = false
    var body: some View {
        VStack {
            HStack {
                Button {
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.postImage = nil
                    tabIndex = 0
                } label: {
                    Text("Cancel")
                }
                Spacer()
            }.padding(.horizontal)
            Image("StockMan5")
                .resizable()
                .scaledToFill()
                .frame(width:360,height:360)
                .clipShape(Rectangle())
            Text("Caption")
        TextField("Enter your caption...", text: $caption, axis: .vertical).padding(.horizontal)
            
          
        Toggle(isOn: $isPrivate) {
                        Text("Private")
                    }.padding(.horizontal)
            
            Button {
                print("Clicked share")
            } label: {
                Text("Share").fontWeight(.semibold)
                    .frame(width: 360, height: 36)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(8)
            }
            Spacer()
        }
    }
}

#Preview {
    UploadPostSubmitView(tabIndex:.constant(1))
}
