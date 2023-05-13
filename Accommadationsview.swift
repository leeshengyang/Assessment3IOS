//
//  Accommadationsview.swift
//  Food Donator
//
//  Created by UTS on 13/5/2023.
//

import Foundation
import SwiftUI

struct AccommadationsMenu: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var systemImageName: String
    
    static func all() -> [AccommadationsMenu] {
        [
            .init(title: "Accommadationinformation", systemImageName: "mappin.circle"),
            .init(title: "Accommdations", systemImageName: "mappin.circle"),
            .init(title: "Accommadationwebsites", systemImageName: "mappin.circle"),
            .init(title: "Accommdationscities", systemImageName: "mappin.circle"),
           
        ]
    }
}

struct Accommadationsview: View {

    
    var menuOptions: [AccommadationsMenu] {
        AccommadationsMenu.all().filter { option in
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
                            AccommadationsMenuitem(for: option)
                        } label: {
                            HStack {
                                Image(systemName: option.systemImageName)
                                Text(option.title)
                            }
                       }
                    }
                }
               .navigationTitle("International Students Accommdataions")
            }
            
            
        }
    }
 
    @ViewBuilder
    private func AccommadationsMenuitem(for option: AccommadationsMenu) -> some View {
        Group {
            switch option.title {
            case "Accommadationinformation":
                Accommadation information()
            case "Accommdations":
                Accommadations()
            case "Accommadationwebsites":
                Accommadation websites()
            case "Accommdationscities":
                Accommadations cities()
          
            default:
                Text("Page not Found")
            }
        }
    }
    
}

struct Accommadationsview_Previews: PreviewProvider {
    static var previews: some View {
        Accommadationsview()
    }
}
