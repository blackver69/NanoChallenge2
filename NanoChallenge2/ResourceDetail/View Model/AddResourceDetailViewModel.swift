//
//  AddResourceDetailViewModel.swift
//  NanoChallenge2
//
//  Created by Ricky on 29/07/22.
//

import Foundation


class AddResourceDetailViewModel{
    var resource: Resource
    init(resource: Resource){
        self.resource = resource
    }
    
    func getProjectCount()-> Int{
        return Int(resource.projectCount)
    }
    func getTopicCount()->Int{
        return Int(resource.topicCount)
    }
    func getDataCount()->Int{
        return (resource.file?.allObjects.count)!
    }
    func getFile()->[File]{
        return (resource.file?.allObjects as? [File])!
    }
}
