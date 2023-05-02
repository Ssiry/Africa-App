//
//  MapView.swift
//  Africa
//
//  Created by Hassan Assiry on 02/04/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinate = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinate, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    var body: some View {
        //MARK: - 1. BASIC MAP
       // Map(coordinateRegion: $region)
        
        //MARK: - 2. ADVANCED MAP
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            // A. Pin: old style (always static)
//            MapPin(coordinate: item.location, tint: .accentColor)
            
            // B. MARKER: new style (always static)
//            MapMarker(coordinate: item.location , tint: .accentColor)
            
            // C. custom basic annotation (it could be interactive)
//            MapAnnotation(coordinate: item.location) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32,height: 32,alignment: .center)
//            }
            
            // D. custom Advanced annotation (it could be interactive)
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        }//: MAP
        .overlay (
            HStack(alignment: .center, spacing: 12){
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48 ,height:  48 , alignment: .center)
                VStack(alignment: .leading, spacing:  3) {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }//: H-STACK
                    
                    Divider()
                    
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }//: H-STACK
                }//: V-STACK
            }//: H-STACK
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(
                Color.black
                    .cornerRadius(8)
                    .opacity(0.6)
            )
            .padding()
            , alignment: .top
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
