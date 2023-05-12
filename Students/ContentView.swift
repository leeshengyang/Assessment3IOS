/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct MenuOption: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var systemImageName: String
    
    static func all() -> [MenuOption] {
        [
            .init(title: "Launch", systemImageName: "airplane.circle"),
            .init(title: "Locations", systemImageName: "mappin.circle"),
            .init(title: "Rewards", systemImageName: "dollarsign.circle"),
            .init(title: "Health Insurance", systemImageName: "dollarsign.circle"),
            .init(title: "Job Hunting Guide", systemImageName: "dollarsign.circle")
        ]
    }
}

struct ContentView: View {
    @StateObject var locationService: LocationService = .shared
    
    var menuOptions: [MenuOption] {
        MenuOption.all().filter { option in
            guard option.title == "Locations" else {
                return true
            }
            return locationService.userLocation != nil
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

    //                    NavigationLink {
    //                        if option.title == "Locations" {
    //                            LocationDetail().navigationTitle("Locations")
    //                        } else if option.title == "Rewards" {
    //                            Rewards()
    //                        } else if option.title == "Launch" {
    //
    //                        } else {
    //                            Detail(menuOption: option)
    //                        }
    //                    } label: {
    //                        Label(option.title, systemImage: option.systemImageName)
    //                    }
                    }
                }.navigationTitle("Home")
            }
            
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            AccountForm()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Account")
                }
            
            DonateFundsList()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Donate")
                }
        }
    }
    
    
    @ViewBuilder
    private func destination(for option: MenuOption) -> some View {
        Group {
            switch option.title {
            case "Locations":
                LocationDetail()
                    .environmentObject(locationService)
                //                .navigationTitle("Locations")
            case "Rewards":
                Rewards()
            case "Launch":
                Scanner(classifier: ImageClassifier())
            case "Health Insurance":
                Rewards()
               // HealthInsuraceView()
              //  Scanner(classifier: ImageClassifier())
            case "Job Hunting Guide":
                job_Hunt_Menu_View()
            default:
                Text("Shouldn't happen")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
