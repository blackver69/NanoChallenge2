//
//  TopicViewModel.swift
//  NanoChallenge2
//
//  Created by Ricky on 29/07/22.
//

import Foundation


class TopicViewModel{
    var topic: Topic
    init(topic: Topic){
        self.topic = topic
    }
    
    func getResource()->[Resource]{
        return (topic.resource?.allObjects as? [Resource])!
    }
}
