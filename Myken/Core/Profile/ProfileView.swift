//
//  ProfileView.swift
//  Myken
//
//  Created by NAAMA on 7/15/24.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),

    ]
    var body: some View {
        NavigationStack {
            ScrollView{
                //header
                VStack {
                    // photo and stats
                    HStack {
                        Image("StockMan1").resizable().scaledToFill().frame(width: 80,height:80).clipShape(Rectangle()).padding(6).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                        HStack {
                            VStack {
                                HStack{
                                    VStack (alignment: .leading) {
                                        Text("Davis L")
                                            .font(.footnote)
                                        Text("@davislllll")
                                            .font(.caption)
                                    }.frame(maxWidth:.infinity, alignment: .leading)
                                        .padding(.horizontal)
                                    //followers
                                    VStack (alignment: .trailing) {
                                        HStack {
                                            
                                            
                                            Text("200")
                                                .font(.footnote)
                                            Text("followers")
                                                .fontWeight(.semibold)
                                                .font(.caption)
                                        }
                                        HStack {
                                            Text("40")
                                                .font(.footnote)
                                            Text("following")
                                                .fontWeight(.semibold)
                                                .font(.caption)
                                        }
                                    }.frame(maxWidth:.infinity, alignment: .leading)
                                        .padding(.horizontal)
                                }
                                //edit profile button
                                                Button(action: {
                                                    
                                                }, label: {
                                                    Text("Edit Profile").font(.subheadline).fontWeight(.semibold)
                                                        .frame(width: 230, height: 28)
                                                        .foregroundColor(.black)
                                                        .overlay(Rectangle().stroke(Color.black,lineWidth: 1.0))
                                                }
                                                )
                            }
                        }
                    }
                    .padding(.horizontal)

                    
                    Divider()
                }
                //post grid view
                LazyVGrid(columns: gridItems,spacing:1, content: {
                    ForEach(0...15, id: \.self){
                        index in Image("StockMan1").resizable().scaledToFill()
                    }
                })
            }
            .navigationTitle("Profile").navigationBarTitleDisplayMode(.inline).toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal").foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
