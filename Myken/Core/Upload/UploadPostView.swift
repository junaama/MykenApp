//
//  UploadPostView.swift
//  Myken
//
//  Created by NAAMA on 7/15/24.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @State private var photoItem: PhotosPickerItem?
    @StateObject var viewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    @State private var singleSelection: UserListItem?
    
    var body: some View {
        VStack {
            // action toolbar
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
                Text("Upload Post")
                    .fontWeight(.semibold)
                Spacer()
//                Button {
//                    print("Upload")
//                } label: {
//                    Text("Upload")
//                        .fontWeight(.semibold)
//                }
            }.padding(.horizontal)
            VStack{
                List(userListItems, id: \.self, selection: $singleSelection) {
                    post in HStack(spacing: 8) {
                                         Image("StockMan4").resizable().scaledToFill().frame(width: 70, height: 67).clipShape(Rectangle()).padding(6).border(Color.black)
                                         VStack(alignment: .leading) {
                                             Text(post.name)
                                                 .fontWeight(.semibold)
                                             Text(post.username)
                                         }
                                         Spacer()
                 
                                     }.padding(10).border(Color.black)
                }
            }
            HStack(spacing:8) {
                //post image
                if let image = viewModel.postImage {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width:200,height:200)
                        .clipped()
                }
                //caption
//                TextField("Enter your caption...", text: $caption, axis: .vertical)
            }.padding()
            Spacer()
            Button {
                print("Clicked next")
            } label: {
                Text("Next").fontWeight(.semibold)
                    .frame(width: 360, height: 36)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(8)
            }
//            Spacer()
        }.padding()
        .onAppear{
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)
    }
}

struct UserListItem: Identifiable, Hashable {
    let name: String
    let username: String
    let id = UUID()
}
private var userListItems = [
    UserListItem(name: "John M", username: "johnathonnnm"),
    UserListItem(name: "John M", username: "johnathonnnm"),
    UserListItem(name: "John M", username: "johnathonnnm"),
    UserListItem(name: "John M", username: "johnathonnnm"),
    UserListItem(name: "John M", username: "johnathonnnm"),
    UserListItem(name: "John M", username: "johnathonnnm"),
    UserListItem(name: "John M", username: "johnathonnnm"),
    UserListItem(name: "John M", username: "johnathonnnm"),
    UserListItem(name: "John M", username: "johnathonnnm"),

]
#Preview {
    UploadPostView(tabIndex: .constant(1))
}
