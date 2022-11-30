//
//  MapView.swift
//  Africa
//
//  Created by Muhsin Munashif on 28/08/2022.
//

import SwiftUI
import MapKit


struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var mapCordinates = CLLocationCoordinate2D(
            latitude: -18.8555909,
            longitude:  16.327131
        )
        var mapZoomLevel = MKCoordinateSpan(
            latitudeDelta: 70.0,
            longitudeDelta: 70.0
        )
        var mapRegion = MKCoordinateRegion(
            center: mapCordinates,
            span: mapZoomLevel
        )
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("Data/locations.json")
    
    var body: some View {
        // Basic Map
        //        Map(coordinateRegion: $region)
        // Map with Annotations
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            //(A) Pin: Old Style
            //            MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) Markers: New Style
            //            MapMarker(coordinate: item.location, tint: .accentColor)
            
            // (C) Custom Basic Annotation: Interactive
            //            MapAnnotation(coordinate: item.location) {
            //                Image("logo")
            //                    .resizable()
            //                    .scaledToFit()
            //                    .frame(width: 32, height: 32, alignment: .center)
            //            }
            
            // (D) Custom animated Annotation
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
            
        })
        .overlay(alignment: .top) {
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude: ")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    Divider()
                    HStack {
                        Text("Longitude: ")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 12)
            .background {
                Color.black
                    .cornerRadius(8)
                    .opacity(0.6)
            }
            .padding()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
