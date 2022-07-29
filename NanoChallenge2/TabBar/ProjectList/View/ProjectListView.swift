//
//  ProjectListView.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation
import SwiftUI
import CoreData
struct ProjectListView: View{
    
    var projectListViewModel: ProjectListViewModel
    
    init(vm: ProjectListViewModel){
        self.projectListViewModel = vm
    }
    
    @State var itemPerRow: CGFloat = 2
    @State var horizontalSpacing: CGFloat = 16
    @State var height: CGFloat = 130
    @State var projectList: [Project] = []
    @State var name: String = ""
    var body: some View{
        NavigationView{
            ZStack {
                Color.darkBlue.ignoresSafeArea()
                VStack{
                    Spacer(minLength: 1)
                    GeometryReader{geometry in
                        
                        ScrollView{
                            VStack(alignment: .leading, spacing: 8){
                                Spacer(minLength: 10)
                                ForEach(0..<projectListViewModel.getProject().count){ i in
                                    if(i % Int(itemPerRow) == 0){
                                        buildView(rowIndex: i, geometry:geometry)
                                    }
                                }
                            }
                            
                        }
                        Spacer(minLength: 100)
                    }.background(.white)
                    
                }.navigationBarItems(trailing:
                                        Button(action: {AlertView(text: $name)}){
                    Text("new Resource")
                })
                
                .navigationTitle("Project")
            }
        }
        
        
        
        
        
        
        
    }
    func buildView(rowIndex: Int, geometry: GeometryProxy) -> RowView?{
        var rowProjectCard = [Project]()
        let projectArr = projectListViewModel.getProject()
        for itemIndex in 0..<Int(itemPerRow){
            if(itemIndex + rowIndex < projectArr.count){
                rowProjectCard.append(projectArr[itemIndex + rowIndex])
            }
        }
        if(!rowProjectCard.isEmpty){
            return RowView(vm: RowViewModel(user: projectListViewModel.user!), cards: rowProjectCard, width: getWidth(geometry: geometry) , height: height, horizontalSpacing: horizontalSpacing)
        }
        return nil
    }
    func getWidth(geometry: GeometryProxy) -> CGFloat{
        let width: CGFloat = (geometry.size.width - horizontalSpacing * (itemPerRow + 1))/itemPerRow
        return width
    }
    
}


//struct ProjectListView_preview: PreviewProvider {
//    static var previews: some View {
//        ProjectListView()
//    }
//}
