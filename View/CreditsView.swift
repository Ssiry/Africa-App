//
//  CreditsView.swift
//  Africa
//
//  Created by Hassan Assiry on 07/04/2023.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128 ,height: 128)
            Text("""
                  Copyright © Hassan Asery
                  All right reserved
                  Better Apps ♡ Less Code
                  """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        }//: V-STACK
        .opacity(0.4)
        .padding()
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
