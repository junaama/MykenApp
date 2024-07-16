//
//  LoginView.swift
//  Myken
//
//  Created by NAAMA on 7/15/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
//    @State private var caption = ""
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("MYKEN").font(.title)
//                Spacer()
//                Text("Enter Phone Number").font(.title2)
                Text("Please enter your phone number to receive a verification code")
                
                TextField("Enter your email...", text: $email, axis: .vertical).textInputAutocapitalization(.none)
                    .font(.subheadline).padding(12).background(Color(.systemGray6)).cornerRadius(10).padding(.horizontal, 24)
                
                SecureField("Enter your password...", text: $password).font(.subheadline).padding(12).background(Color(.systemGray6)).cornerRadius(10).padding(.horizontal,24)
                
                Button {
                    print("Forgot password")
                } label: {
                    Text("Forgot password?").font(.footnote).fontWeight(.semibold).padding(.top)
                }
                
                Button {
                    print("Log In")
                } label: {
                    Text("Log In").fontWeight(.semibold)
                        .frame(width: 360, height: 36)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(8)
                }
                
                Divider()
                NavigationLink(destination: AddEmailView().navigationBarBackButtonHidden(true), label: {
                    HStack(spacing: 6) {
                        Text("Don't have an account?").fontWeight(.semibold)
                        Text("Sign Up")
                        
                    }
                    .font(.footnote)
                } )
            }
        }
    }
}

#Preview {
    LoginView()
}
