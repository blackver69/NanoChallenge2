//
//  InsertResource.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation

import SwiftUI


struct InsertResource: View{
    var insertResourceViewModel: InsertResourceViewModel
    init(vm: InsertResourceViewModel){
        insertResourceViewModel = vm
    }
    var body: some View{
        VStack{
            List{
                ForEach(insertResourceViewModel.getProject(), id: \.self){ project in
                    DisclosureGroup("\(project)"){
                        ForEach(insertResourceViewModel.getResource(project: project), id: \.self){ res in
                            HStack{
                                Text(res.name ?? "Kosong")
                                Spacer()
                                RoundedRectangle(cornerRadius: 4)
                                    .foregroundColor(.white)
                                    .frame(width: 20, height: 20)
                                    .border(Color.darkBlue, width: 1)
                                
                                
                            }
                            
                        }
                    }
                }
                
                
            }
            Spacer()
                .navigationTitle("Project")
        }
    }
}


//struct InsertResource_Preview: PreviewProvider{
//    static var previews: some View{
//        InsertResource()
//    }
//}
