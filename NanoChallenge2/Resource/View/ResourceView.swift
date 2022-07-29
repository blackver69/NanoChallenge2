//
//  ResourceView.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation
import SwiftUI
struct ResourceView: View{
    @Environment(\.managedObjectContext) public var viewContext
    var resourceViewModel : ResourceViewModel
    init(resources: [Resource]){
        resourceViewModel = ResourceViewModel(resources: resources)
    }
    var body: some View{
        VStack(spacing: 16){
                
                List{
                    
                    ForEach(resourceViewModel.resources, id: \.self){ resource in
                        NavigationLink(destination: AddResourceDetailView(vm: AddResourceDetailViewModel(resource: resource))){
                            
                        VStack{
                            Text(resource.name ?? "kosong")
                            Text(resource.type ?? "kosong")
                        }
                    }
                }
            }.environment(\.defaultMinListRowHeight, 50)
        }
    }
}
