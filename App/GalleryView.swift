//
//  GalleryView.swift
//  Africa
//
//  Created by Hassan Assiry on 02/04/2023.
//

import SwiftUI

struct GalleryView: View {
    
    @State private var slectedAnimal: String = "lion"
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    // Simple grid deffinition
//    let gridLayout: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
    
    // efficient grid deffinition
//    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    // efficient grid deffinition
    @State private var gridLayout: [GridItem] = [ GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    
    func gridSwitch(){
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    var body: some View {
        ScrollView(.vertical , showsIndicators: false){

            

            VStack (alignment: .center, spacing: 30){
                //MARK: - image
                Image(slectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(Color.white, lineWidth: 8)
                    }
                
                //MARK: - SLIDER
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn) { Value in
                        gridSwitch()
                    }
                //MARK: - Grid
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(Color.white, lineWidth: 1)
                            }
                            .onTapGesture {
                                slectedAnimal  = item.image
                                haptics.impactOccurred()
                            }
                    }//: LOOP
                }//: Grid
                .animation(.easeIn , value: 1)
                .onAppear {
                    gridSwitch()
                }
            }//: V-STACK
        }//: SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
