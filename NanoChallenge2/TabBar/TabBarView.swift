//
//  TabBarView.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation

import SwiftUI

struct TabBarView: View {
    @State var user: User
    var body: some View {
        
        TabView{
            ResourceListView(user: user)
                .tabItem{
                    Label("Resource", systemImage: "book")
                }
            TopicListView(user: user)
                .tabItem{
                    Label("Topic", systemImage: "magnifyingglass.circle")
                }
            ProjectListView(user: user)
                .tabItem{
                    Label("Project", systemImage: "folder")
                }
        }
        
    }
}

//struct TabBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBarView(user: <#User#>)
//    }
//}
