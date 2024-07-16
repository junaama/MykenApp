//
//  AddPasswordView.swift
//  Myken
//
//  Created by NAAMA on 7/15/24.
//

import SwiftUI

struct AddPasswordView: View {
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text("Add your password").font(.title2).fontWeight(.bold).padding(.top)
            Text("You'll use this password to sign in to your account").font(.footnote).foregroundStyle(Color.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            SecureField("Password", text: $password)
                .textInputAutocapitalization(.none)
                .font(.subheadline)
                .padding(12)
                .background(Color(.systemGray6)).cornerRadius(10)
                .padding(.horizontal, 24)
            NavigationLink{
                CompleteSignUpView().navigationBarBackButtonHidden(true)
            } label: {
                Text("Next").fontWeight(.semibold)
                    .frame(width: 360, height: 36)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(8)
            }
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
    AddPasswordView()
}
