//
//  FileRectView.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation

import SwiftUI

import PDFKit
struct FileRectView: View{
//    var url: URL
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 24).frame(width: 160, height: 160)
            Color.darkBlue
//            PDFKitRepresentedView(url)
            VStack{
                Spacer()
                Text("masul")
            }
        }.onTapGesture {
            
        }
    }
}


struct FileRectView_Preview: PreviewProvider{
    static var previews: some View{
        FileRectView()
    }
}
