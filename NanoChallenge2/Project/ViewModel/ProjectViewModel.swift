//
//  ProjectViewModel.swift
//  NanoChallenge2
//
//  Created by Ricky on 29/07/22.
//

import Foundation

class ProjectViewModel{
    var project: Project
    var user: User
    init(project: Project, user: User){
        self.project = project
        self.user = user
    }
    
    func getResource()->[Resource]{
        return (project.resource?.allObjects as? [Resource])!
    }
}
