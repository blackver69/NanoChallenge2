//
//  TopicListView.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation
import SwiftUI

struct TopicListView: View{
    var topicListViewModel: TopicListViewModel
    init(user: User){
        self.topicListViewModel = TopicListViewModel(user: user)
    }
    var body: some View{
        NavigationView{
            ZStack{
                Color.darkBlue.ignoresSafeArea()
                VStack{
                    
                    List{
                        ForEach(topicListViewModel.getTopics(), id: \.self){
                            topic in
                            NavigationLink(destination: TopicView(vm: TopicViewModel(topic: topic))){
                                HStack{
                                    Text(topic.name ?? "tidak ada")
                                    Spacer()
                                    Text("\(topic.resource!.allObjects.count)")
                                }
                                .foregroundColor(.white)
                                .padding()
                                .background(.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                            }
                        }
                        
                    }.navigationBarTitle("Topic")
                        .listStyle(.plain)
                        .listSectionSeparator(.hidden)
                        .background(.white)
                }
            }
        }
        
        
    }
    
}


//struct TopicListView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopicListView()
//    }
//}
