//
//  ProjectCardList.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation
import SwiftUI


struct ProjectCardView: View{
    var projectCardViewModel: ProjectCardViewModel
    init(vm: ProjectCardViewModel){
        self.projectCardViewModel = vm
    }
    var body: some View{
        NavigationLink(destination: ProjectView(vm: ProjectViewModel(project: projectCardViewModel.project, user: projectCardViewModel.user))){
            ZStack{
                RoundedRectangle(cornerRadius: 12).foregroundColor(.darkBlue)
                VStack{
                    Spacer(minLength: 20)
                    Text("masuk").foregroundColor(.white)
                    ZStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                        VStack(alignment: .leading){
                            Text("Masuk")
                                .foregroundColor(.darkBlue)
                            Text("Masuk")
                                .foregroundColor(.darkBlue)
                            
                        }.padding()
                    }.padding()
                }
            }.frame(width: CGFloat(160), height: CGFloat(160))
            
        }
    }
}



//struct ProjectCardView_preview: PreviewProvider {
//    static var previews: some View {
//        ProjectCardView()
//    }
//}
