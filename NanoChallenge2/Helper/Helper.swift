//
//  Helper.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation
import SwiftUI


extension Text{
    func headerStyle() -> some View{
        self.font(.custom("SFPro", size: 18))
    }
    
}

extension Color{
    static var darkBlue: Color{
        return Color(red: 0.11, green: 0.33, blue: 0.57)
    }
}

extension Button{
    func primaryButtom(){
        self.padding()
        self.background(Color.darkBlue)
        self.clipShape(RoundedRectangle(cornerRadius: 24))
    }
}
