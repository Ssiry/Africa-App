//
//  InsetMapView.swift
//  Africa
//
//  Created by Hassan Assiry on 03/04/2023.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
//MARK: - PROPERTY
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599),
        span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0)
    )
//MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack{
                        Image(systemName: "mappin.circle")
                            .foregroundColor(Color.white)
                            .imageScale(.large)
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    }//: H-STACK
                    .padding(.vertical,10)
                    .padding(.horizontal,14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                }//: NAVIGATION
                    .padding(12)
                ,alignment: .topTrailing
                )
            .frame(height: 265)
            .cornerRadius(12)
//        print(region.center.latitude)
    }
}
//MARK: - PREVIEW
struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
