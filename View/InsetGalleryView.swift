//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Hassan Assiry on 03/04/2023.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: Animal
    
    var body: some View {
       
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }//: H-STACK
        }
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
