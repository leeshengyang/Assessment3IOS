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
    var children: [MenuOption]?
    
    static func all() -> [MenuOption] {
        
        [

            //Health
            .init(title: "What is Health Insurance or Coverage?", systemImageName: "heart.circle"),
            .init(title: "Where can I go for further health insurance information or help?", systemImageName: "heart.circle"),
            .init(title: "Who offers OSHC and how much will it cost?", systemImageName: "heart.circle"),
            .init(title: "How do I pay for medical treatment?", systemImageName: "heart.circle"),
            .init(title: "Why are international students required to have OSHC?", systemImageName: "heart.circle"),
            .init(title: "What services does OSHC offer you?", systemImageName: "heart.circle"),
            .init(title: "What if I need treatment while I’m in Australia?", systemImageName: "heart.circle"),

            //Transportation
            .init(title: "Transport in Sydney", systemImageName: "tram.tunnel.fill"),
            .init(title: "Travelling Expense", systemImageName: "dollarsign.circle"),
            .init(title: "Map", systemImageName: "map.circle"),
            
            //Job Hunt
            .init(title: "International student Job hunting guide", systemImageName: "house.fill"),
            .init(title: "Job Hunting Tips1 : Start Early", systemImageName: "1.circle"),
            .init(title: "Job Hunting Tips2 : Know the Local Job Market", systemImageName: "2.circle"),
            .init(title: "Job Hunting Tips3 : Understand Visa and Work Permit Regulations", systemImageName: "3.circle"),
            .init(title: "Job Hunting Tips4 : Tailor Your Resume and Cover Letter", systemImageName: "4.circle"),
            .init(title: "Job Hunting Tips5 : Practice Interviewing Skills", systemImageName: "5.circle"),
            .init(title: "Job Hunting Tips6 : Build Your Professional Network", systemImageName: "6.circle"),
            .init(title: "Job Hunting Tips7 : Be Persistent", systemImageName: "7.circle"),

            //Accommodations
            .init(title: "Accommodation Information", systemImageName: "mappin.circle"),
            .init(title: "Accommodation", systemImageName: "mappin.circle"),
            .init(title: "Accommodation Websites", systemImageName: "mappin.circle"),
            .init(title: "Accommodation Cities", systemImageName: "mappin.circle"),
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
            
            //            AccountForm()
            //                .tabItem {
            //                    Image(systemName: "person.circle")
            //                    Text("Account")
            //                }
            NewsFeed()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("NewsFeed")
                }
            
            DonateFundsList()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Subscribe")
                }
        }
    }
    
    
    @ViewBuilder
    private func destination(for option: MenuOption) -> some View {
        
        
        
        ScrollView {
            Group {
                switch option.title {
                    
                // Health
                case "What is Health Insurance or Coverage?":
                    DefinitionView()
                case "Where can I go for further health insurance information or help?":
                    FurtherInformationView()

                case "Who offers OSHC and how much will it cost?":
                    OffersAndCostView()
                case "How do I pay for medical treatment?":
                    PaymentView()
                    
                case "Why are international students required to have OSHC?":
                    RequiredView()
                case "What services does OSHC offer you?":
                    ServicesView()

                case "What if I need treatment while I’m in Australia?":
                    TreatmentView()

                // Transportation
                case "Transport in Sydney":
                    TransportSydneyView()
                case "Travelling Expense":
                    expenseView()
                case "Map":
                    mapView()
                    
                //Job Hunt
                case "International student Job hunting guide":
                    Job_Hunting_Guide()
                case "Job Hunting Tips1 : Start Early":
                    job_hunt_tips_1()
                case "Job Hunting Tips2 : Know the Local Job Market":
                    job_hunt_tips_2()
                case "Job Hunting Tips3 : Understand Visa and Work Permit Regulations":
                    job_hunt_tips_3()
                case "Job Hunting Tips4 : Tailor Your Resume and Cover Letter":
                    job_hunt_tips_4()
                case "Job Hunting Tips5 : Practice Interviewing Skills":
                    job_hunt_tips_5()
                case "Job Hunting Tips6 : Build Your Professional Network":
                    job_hunt_tips_6()
                case "Job Hunting Tips7 : Be Persistent":
                    job_hunt_tips_7()
                    
                // Accommodation
                case "Accommodation Information":
                    Accommadationinformation()
                case "Accommodation":
                    Accommadations()
                case "Accommodation Websites":
                    Accommadationwebsites()
                case "Accommodation Cities":
                    Accommadationscities()

//                case "Locations":
//                    LocationDetail()
//                        .environmentObject(locationService)
//                    //                .navigationTitle("Locations")
//
//
//                case "Health Insurance":
//                    HealthInsuraceView()
//                case "Job Hunting Guide":
//                    job_Hunt_Menu_View()
//                case "Transport":
//                    TransportView()
                default:
                    Text("Shouldn't happen")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
