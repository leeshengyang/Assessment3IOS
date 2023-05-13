//
//  Testview.swift
//
//
//  Created by 孙嘉甫 on 2023/5/12.
//
import MapKit
import SwiftUI

struct mapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -33.865143, longitude: 151.209900), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    var body: some View {
        Map(coordinateRegion: $region)
            .frame(width: 400, height: 300)
    }
}
