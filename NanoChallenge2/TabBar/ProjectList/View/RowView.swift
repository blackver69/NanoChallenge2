//
//  RowView.swift
//  NanoChallenge2
//
//  Created by Ricky on 29/07/22.
//

import Foundation
import SwiftUI
struct RowView: View{
    var rowViewModel: RowViewModel
    var cards: [Project] = []
    var width: CGFloat = 0
    var height: CGFloat = 0
    var horizontalSpacing: CGFloat = 0
    init(vm: RowViewModel, cards: [Project], width: CGFloat, height: CGFloat, horizontalSpacing: CGFloat){
        rowViewModel = vm
        self.cards = cards
        self.width = width
        self.height = height
        self.horizontalSpacing = horizontalSpacing
    }
    
    var body: some View{
        HStack{
            ForEach(cards){
                
                card in
                ProjectCardView(vm: ProjectCardViewModel(project: card, user: rowViewModel.user)).frame(width: width, height: height)
            }
        }.padding()
    }
}
