//
//  TopicViewModel.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation


class TopicListViewModel{
    var user: User?
    init(user: User){
        self.user = user
    }
    func getTopics()-> [Topic]{
        return (user!.topic?.allObjects as? [Topic])!
    }
}
