//
//  NanoChallenge2App.swift
//  NanoChallenge2
//
//  Created by Ricky on 21/07/22.
//

import SwiftUI

@main
struct NanoChallenge2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
