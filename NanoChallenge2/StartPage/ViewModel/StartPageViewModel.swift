//
//  StartPageViewModel.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation
import SwiftUI
import CoreData
class StartPageViewModel: ObservableObject{
//    @State
    var viewContext: NSManagedObjectContext
    @FetchRequest(sortDescriptors: [])
    public var userData: FetchedResults<User>
    init(vc: NSManagedObjectContext){
        self.viewContext = vc
    }
    

}
