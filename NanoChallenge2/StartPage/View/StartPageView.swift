//
//  StartPageView.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation
import SwiftUI
struct StartPage: View{
    @Environment(\.managedObjectContext) public var viewContext
    
    var startPageViewController: StartPageViewModel
    @State var destination = false
    init(vm: StartPageViewModel){
        startPageViewController = vm
        
    }
    
    //    @StateObject private var dataController = DataController()
    var body: some View{
        NavigationView{
            VStack(alignment: .center, spacing: 15){
                Spacer()
                
                NavigationLink(destination: LoginView(vm: LoginViewModel(vm: viewContext))){
                    Text("Login")
                }
                NavigationLink(destination: SignUpView(vm: SignUpViewModel(vc: viewContext), des: $destination),isActive: self.$destination){
                    Text("Sign Up")
                    
                }
            }
            .navigationTitle("Hello!!")
            
        }
    }
}

//struct StartPage_Preview: PreviewProvider{
//    let persistenceController = PersistenceController.shared
//    static var previews: some View{
//        StartPage().environment(\.managedObjectContext, )
//    }
//}
