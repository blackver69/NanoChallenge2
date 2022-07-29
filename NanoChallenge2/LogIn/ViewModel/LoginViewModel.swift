//
//  LoginViewModel.swift
//  NanoChallenge2
//
//  Created by Ricky on 28/07/22.
//

import Foundation
import SwiftUI
import CoreData

class LoginViewModel: ObservableObject{
    var viewContext: NSManagedObjectContext
    
    init(vm: NSManagedObjectContext){
        self.viewContext = vm
    }
    @FetchRequest(sortDescriptors: [])
    public var userData: FetchedResults<User>
    func checkUser(username: String, password: String)-> User?{
        
        for i in 0..<userData.count{
            print(userData[i].username! + " " + userData[i].password!)
            if(userData[i].username == username && userData[i].password == password){
                
                return userData[i]
                
                
            }
        }
        return nil
    }
}
