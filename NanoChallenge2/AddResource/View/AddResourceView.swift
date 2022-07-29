//
//  AddResourceView.swift
//  NanoChallenge2
//
//  Created by Ricky on 24/07/22.
//

import Foundation
import SwiftUI


struct AddResourceView: View{
    @State var name : String = ""
    @State var detail: String = ""
    @State var fileName: String = ""
    @State var openFile = false
    @State private var document: InputDoument = InputDoument(input: "")
//    @Environment(\.exportFiles) var exportAction
    var body: some View{
        
        VStack(){
                Form{
                    VStack(alignment: .leading){
                        Text("Name")
                        TextField(
                            "Name",
                            text: $name)
                    }.frame(alignment: .leading)
                    HStack{
                        Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("Type")) {
                            Text("Book").tag("1")
                            Text("Website").tag("2")
                        }
                    }
                    VStack(alignment: .leading){
                        Text("Detail")
                        TextField(
                            "Detail",
                            text: $detail)
                    }
                    HStack{
                        Text("Topic")
                        Spacer()
    //                    Button(action: print("Masuk"), label: <#T##() -> _#>)
                    }
                    VStack(alignment: .leading){
                        Text("File")
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 24).frame(height: CGFloat(150)).foregroundColor(.gray)
                            VStack{
                                Image(systemName: "doc.on.doc").frame(width: CGFloat(62), height: CGFloat(74), alignment: .center)
                                Text("Add Document")
                            }
                            
                        }.onTapGesture {
                            
                            openFile.toggle()
                            
//                            let url = Bundle.main.url(forResource: "symbols", withExtension: "json")
                        }
                       
                    }
                    
                }.fileImporter(
                    isPresented: $openFile,
                    allowedContentTypes: [.pdf, .jpeg],
                    allowsMultipleSelection: false
                ) { result in
                    do {
                        
                        guard let selectedFile: URL = try result.get().first else { return }
                        if selectedFile.startAccessingSecurityScopedResource() {
                            guard let input = String(data: try Data(contentsOf: selectedFile), encoding: .utf8) else { return }
                            defer { selectedFile.stopAccessingSecurityScopedResource() }
                            document.input = input
                        } else {
                            // Handle denied access
                        }
                    } catch {
                        // Handle failure.
                        print("Unable to read file contents")
                        print(error.localizedDescription)
                    }
                }
                Spacer()
                Button("Add Resource"){
                    buttomPressed()
                }
                Spacer(minLength: 24)
                
            
        }.navigationTitle("New Resource")
        
        
        
    }
    func buttomPressed(){
        
    }
    
}

struct AddResourceView_Preview: PreviewProvider{
    static var previews: some View{
        AddResourceView()
    }
}
