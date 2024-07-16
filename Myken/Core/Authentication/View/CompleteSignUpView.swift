//
//  CompleteSignUp.swift
//  Myken
//
//  Created by NAAMA on 7/15/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Welcome to MYKEN")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            Text("Click below to complete your registration")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)

            Button {
                print("Complete sign up")
            } label: {
                Text("Complete Sign Up").fontWeight(.semibold)
                    .frame(width: 360, height: 36)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(8)
            }
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) { Image(systemName: "chevron.left").imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    CompleteSignUpView()
}
