//
//  CenterModifier.swift
//  Africa
//
//  Created by Hassan Assiry on 07/04/2023.
//

import SwiftUI

struct CenterModifier : ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
