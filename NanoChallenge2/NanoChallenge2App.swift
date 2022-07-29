//
//  NanoChallenge2App.swift
//  NanoChallenge2
//
//  Created by Ricky on 21/07/22.
//

import SwiftUI

@main
struct NanoChallenge2App: App {
    let container = PersistenceController.shared.container.viewContext
    var body: some Scene {
        WindowGroup{
            StartPage(vm: StartPageViewModel(vc: container)).environment(\.managedObjectContext, container)
//            TabBarView()

        }
    }
}
