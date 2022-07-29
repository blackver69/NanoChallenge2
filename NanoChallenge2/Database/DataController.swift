//
//  DataController.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation
import CoreData

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "NanoChallenge2")
    init(){
        container.loadPersistentStores{ desc, error in
            if let error = error{
                print(error)
            }
            
        }
    }

}
