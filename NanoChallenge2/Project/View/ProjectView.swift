//
//  ProjectView.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation

import SwiftUI

struct ProjectView: View{
    var projectViewModel: ProjectViewModel
    init(vm: ProjectViewModel){
        projectViewModel = vm
    }
    var body: some View{
        VStack{
            ResourceView(resources: projectViewModel.getResource())
            Spacer()
            NavigationLink(destination: InsertResource(vm: InsertResourceViewModel(project:projectViewModel.project, user: projectViewModel.user))){
                Text("Add Resource")
            }
    
        }
        .navigationTitle("Project")
    
        
    }
}

//struct ProjectView_Preview: PreviewProvider{
//    static var previews: some View{
//        ProjectView()
//    }
//}
