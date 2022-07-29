//
//  SignUpViewModel.swift
//  NanoChallenge2
//
//  Created by Ricky on 27/07/22.
//

import Foundation
import SwiftUI
import CoreData

class SignUpViewModel: ObservableObject{
    var viewContext: NSManagedObjectContext
    
    init(vc: NSManagedObjectContext){
        self.viewContext = vc
    }
    func addUser(username: String, password: String){
        let newUser =  User(context: viewContext)
        newUser.username = username
        newUser.password = password
        do {
            try viewContext.save()
            
        }catch{
            
            print("\(error.localizedDescription)")
            
        }
        
 
    }
}
