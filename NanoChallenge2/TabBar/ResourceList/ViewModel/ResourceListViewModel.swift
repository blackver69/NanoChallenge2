//
//  ResourceListViewModel.swift
//  NanoChallenge2
//
//  Created by Ricky on 29/07/22.
//

import Foundation


class ResourceListViewModel{
    var user: User?
    init(user: User){
        self.user = user
    }
    func getResource()-> [Resource]{
        return (user?.resource?.allObjects as? [Resource])!
    }
}
