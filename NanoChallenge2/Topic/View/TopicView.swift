//
//  TopicView.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation
import SwiftUI

struct TopicView: View{
    var topicViewModel: TopicViewModel
    init(vm: TopicViewModel){
        topicViewModel = vm
    }
    var body: some View{
        VStack{
                
            ResourceView(resources: topicViewModel.getResource())
        }
        .navigationTitle("Topic")
    }
}

//struct TopicView_Preview: PreviewProvider{
//    static var previews: some View{
//        TopicView()
//    }
//}
