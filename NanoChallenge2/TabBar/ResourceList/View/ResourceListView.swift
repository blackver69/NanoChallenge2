//
//  ResourceListView.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation
import SwiftUI
import CoreData

struct ResourceListView: View{
    var resourseListViewModel: ResourceListViewModel
    init(user: User){
        resourseListViewModel = ResourceListViewModel(user: user)
    }
    @State var searchText : String = ""
    
    var body: some View{
        NavigationView{
            ZStack{
                Color.darkBlue.ignoresSafeArea()
                VStack(){
                    Spacer(minLength: 24)
                    ResourceView(resources: resourseListViewModel.getResource())
                        .searchable(text: $searchText)
                }
            }
            .navigationBarItems(trailing:
                                    Button(action: {}){
                NavigationLink(destination:
                                AddResourceView()){
                    Text("Add Resource")
                        .foregroundColor(.white)
                }.foregroundColor(.white)
            })
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Resource")
        }
    }
}

//struct ResourceListView_preview: PreviewProvider{
//    static var previews: some View{
//        ResourceListView()
//    }
//}
