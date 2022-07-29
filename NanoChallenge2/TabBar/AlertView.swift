//
//  alert.swift
//  NanoChallenge2
//
//  Created by Ricky on 28/07/22.
//

import Foundation
import SwiftUI
import UIKit
struct AlertView: View {


  @Binding var text: String // this is updated as the user types in the text field
  @State var title = ""
  @State var name = ""
    @State private var presentAlert = false
    var body: some View {
            Button("Show Alert") {
                presentAlert = true
            }
            .alert("Login", isPresented: $presentAlert, actions: {
                TextField(title, text: $name)
                Button("Login", action: {})
                Button("Cancel", role: .cancel, action: {})
            })
    }
    
}
