//
//  AddResourceView.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation

import SwiftUI

struct AddResourceDetailView: View{
    var addResourceDetailViewModel: AddResourceDetailViewModel
    init(vm: AddResourceDetailViewModel){
        addResourceDetailViewModel = vm
    }
    var body: some View{
        VStack(alignment: .leading, spacing: CGFloat(18)){
            Text(addResourceDetailViewModel.resource.name ?? "nil")
                    .bold()
            HStack{
                Text("Type")
                Text(addResourceDetailViewModel.resource.type ?? "nil")
            }
            HStack{
                Text("Detail")
                Text(addResourceDetailViewModel.resource.desc ?? "nil")
            }
            HStack{
                Spacer()
                Text("\(addResourceDetailViewModel.getProjectCount())")
                Spacer()
                Text("\(addResourceDetailViewModel.getTopicCount())")
                Spacer()
                Text("\(addResourceDetailViewModel.getDataCount())")
                Spacer()
            }
            Text("File")
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(addResourceDetailViewModel.getFile()){ file in
                        FileRectView()
                    }
                }
            }.frame(width: 160, height: 160)
            Spacer()
        }.navigationTitle("Resource Detail")
            .padding()
    }
}

//struct AddResourceDetailView_Previewe: PreviewProvider{
//    static var previews: some View{
//        AddResourceDetailView()
//    }
//}
