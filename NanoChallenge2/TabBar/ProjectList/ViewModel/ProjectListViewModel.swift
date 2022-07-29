//
//  ProjectListViewModel.swift
//  NanoChallenge2
//
//  Created by Ricky on 29/07/22.
//

import Foundation

class ProjectListViewModel{
    var user: User?
    init(user: User){
        self.user = user
    }
    func getProject()-> [Project]{
        return (user!.project?.allObjects as? [Project])!
    }
}
