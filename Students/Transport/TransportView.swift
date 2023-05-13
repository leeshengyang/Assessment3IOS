//
//  TransportView.swift
//
//  Created by Jiafu Sun on 13/5/2023.
//

import Foundation
import SwiftUI

struct TransportMenu: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var systemImageName: String
    static func all() -> [TransportMenu] {
        [
            .init(title: "Transport in Sydney", systemImageName: "tram.tunnel.fill"),
            .init(title: "Travelling Expense", systemImageName: "dollarsign.circle"),
            .init(title: "Map", systemImageName: "map.circle"),
            
        ]
    }
}
struct TransportView: View {
  //  @StateObject var locationService: LocationService = .shared
    
    var menuOptions: [TransportMenu] {
        TransportMenu.all().filter { option in
            guard option.title == "" else {
                return true
            }
            return true
        }
        
    }
 
    var body: some View {
        TabView {
            NavigationView {
               List {
                    ForEach(menuOptions, id: \.self) { option in
                        NavigationLink {
                            destination(for: option)
                        } label: {
                            HStack {
                                Image(systemName: option.systemImageName)
                                Text(option.title)
                            }
                       }
                    }
                }
                .navigationTitle("Transport")
            }
            
            
        }
    }
 
    @ViewBuilder
    private func destination(for option: TransportMenu) -> some View {
        Group {
            switch option.title {
            case "Transport in Sydney":
                TransportSydneyView()
            case "Travelling Expense":
                expenseView()
            case "Map":
                mapView()
    
            default:
                Text("Page not Found")
            }
        }
    }
    
}

struct Transport_Previews: PreviewProvider {
    static var previews: some View {
        TransportView()
    }
}
