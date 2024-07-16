//
//  AddEmailView.swift
//  Myken
//
//  Created by NAAMA on 7/15/24.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
            VStack(spacing: 12) {
                Text("Add your email").font(.title2).fontWeight(.bold).padding(.top)
                Text("You'll use this email to sign in to your account").font(.footnote).foregroundStyle(Color.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                TextField("Email", text: $email)
                    .textInputAutocapitalization(.none)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6)).cornerRadius(10)
                    .padding(.horizontal, 24)
                NavigationLink{
                    AddUsernameView().navigationBarBackButtonHidden(true)
                } label: {
                    Text("Next").fontWeight(.semibold)
                        .frame(width: 360, height: 36)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(8)
                }
//                Button {
//                    print("Sign Up")
//                } label: {
//                    Text("Next").fontWeight(.semibold)
//                        .frame(width: 360, height: 36)
//                        .foregroundColor(.white)
//                        .background(Color.black)
//                        .cornerRadius(8)
//                }
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) { Image(systemName: "chevron.left").imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
        
    }
}

#Preview {
    AddEmailView()
}
