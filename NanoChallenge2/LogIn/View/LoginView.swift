//
//  LoginView.swift
//  NanoChallenge2
//
//  Created by Ricky on 27/07/22.
//

import Foundation

import SwiftUI

struct LoginView: View{
    var loginViewModel: LoginViewModel
    
    init(vm: LoginViewModel){
        loginViewModel = vm
    }
    @State var user: User?
    @State var username : String = ""
    @State var password : String = ""
    @State var trigger: Bool = false
    @State var dismiss: Bool = false
    @State var error: Bool = false
    
    
    var body: some View{
        VStack(alignment: .center, spacing: 12){
            Form{
                TextField("Username", text: $username)
                TextField("password", text: $password)
            }
            Button("Login") {
                user = loginViewModel.checkUser(username: username, password: password)
                
                if(user != nil){
                    dismiss = true
                }else{
                    error.toggle()
                }
                
            }
            
            Spacer()
        }.fullScreenCover(isPresented: $dismiss) {
            
            TabBarView(user: user!)
        }
    }
    
}

//struct LoginView_Preview: PreviewProvider{
//    static var previews: some View{
//        LoginView()
//    }
//}
