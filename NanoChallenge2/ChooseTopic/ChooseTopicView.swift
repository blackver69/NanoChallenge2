//
//  ChooseTopicView.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation

import SwiftUI

struct ChooseTopicView: View{
    let topic: [String] = ["1","2","3"]
    var body: some View{
        VStack(spacing: 30){
            List{
                ForEach(topic, id: \.self){ data in
                    HStack{
                        Text(data)
                        Spacer()
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                            .border(Color.darkBlue ,width: 1)
                            
                    }
                }
            }
            Button("New Topic"){
                
            }.frame(width: 342, height: 60, alignment: .center)
                .border(Color.darkBlue, width: 1)
                
            Button("New Topic"){
                
            }.frame(width: 342, height: 60, alignment: .center)
                .background(Color.darkBlue)
                .foregroundColor(Color.white)
                
        }
        
        
            .navigationTitle("Choose Your Topic")
    }
}

struct ChooseTopicView_Preview: PreviewProvider{
    static var previews: some View{
        ChooseTopicView()
    }
}
