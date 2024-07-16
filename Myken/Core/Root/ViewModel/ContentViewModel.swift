//
//  ContentViewModel.swift
//  Myken
//
//  Created by NAAMA on 7/15/24.
//

import Foundation
import Firebase

class ContentViewModel: ObservableObject {
    
    private let service = AuthService.shared
    
    @Published var userSession: FirebaseAuth.User?
    init() {
        
    }
    
    func setupSubscribers() {
        
    }
}
