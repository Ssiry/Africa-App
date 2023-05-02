//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Hassan Assiry on 03/04/2023.
//

import SwiftUI

struct ExternalWebLinkView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox{
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name , destination: (URL(string: animal.link) ?? URL(string: "http://wikipedia.org"))!)
                }.foregroundColor(.accentColor)
            }//: H-STAVK
        }//: BOX
        
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebLinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
