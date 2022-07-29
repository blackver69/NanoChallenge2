//
//  ProjectCardViewModel.swift
//  NanoChallenge2
//
//  Created by Ricky on 29/07/22.
//

import Foundation


class ProjectCardViewModel{
    var project: Project
    var user: User
    init(project: Project, user: User){
        self.project = project
        self.user = user
    }
}
