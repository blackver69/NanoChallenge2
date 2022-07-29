//
//  AddResourceViewModel.swift
//  NanoChallenge2
//
//  Created by Ricky on 29/07/22.
//

import Foundation
import CoreData
import SwiftUI
class AddResourceViewModel{
    var viewContext = PersistenceController.shared.container.viewContext
    var user: User
    init(user: User){
        self.user = user
    }
    
    
    func addResource(name: String, type: String, data: InputDoument, topics: [Topic]){
        let newResource = Resource(context: viewContext)
        newResource.name = name
        newResource.type = type
        newResource.data = data as? Data
        
        ForEach(topics){ topic in
            //buat nambahin
//            newResource.resour
        }
        do {
            try viewContext.save()
        }catch{
            print("\(error.localizedDescription)")
        }
        
 
    }
}
