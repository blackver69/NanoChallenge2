//
//  Persistence.swift
//  NanoChallenge2
//
//  Created by Ricky on 21/07/22.
//

import CoreData
//import SwiftUI
struct PersistenceController {
    static let shared = PersistenceController()
    let container: NSPersistentCloudKitContainer
    
    init(){
        container = NSPersistentCloudKitContainer(name: "NanoChallenge2CoreDataModel")
        
        guard let desc = container.persistentStoreDescriptions.first else{
            fatalError("No Desc found")
        }
        desc.setOption(true as NSObject, forKey: NSPersistentStoreRemoteChangeNotificationPostOptionKey)
        container.loadPersistentStores{ (storeDescription, error) in
            
            if let error = error{
                fatalError("Unresolved error: \(error)")
            }
            
        }
        container.viewContext.automaticallyMergesChangesFromParent = true
        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
    }
}
