//
//  SignUp.swift
//  NanoChallenge2
//
//  Created by Ricky on 27/07/22.
//

import Foundation
import SwiftUI

struct SignUpView: View{
    var signUpViewModel: SignUpViewModel?
    @Binding var destination: Bool
    @State var username : String = ""
    @State var password : String = ""
    init(vm: SignUpViewModel, des: Binding<Bool>){
        self.signUpViewModel = vm
        self._destination = des
    }
    
    
    var body: some View{
        VStack(alignment: .center, spacing: 12){
            Form{
                TextField("Username", text: $username)
                TextField("password", text: $password)
            }

            HStack{
                Button("Sign In"){
                    guard let vm = signUpViewModel as? SignUpViewModel else{
                        fatalError()
                    }
                    vm.addUser(username: username, password: password)
                    destination.toggle()
                }
                
            }
            Spacer()
        }
    }
    
}

//struct SignUpView_Preview: PreviewProvider{
//    static var previews: some View{
//        SignUpView(userData: userData)
//    }
//}
