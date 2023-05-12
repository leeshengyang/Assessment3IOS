//
//  HealthInsurance.swift
//  Food Donator
//
//  Created by User on 12/5/2023.
//

import Foundation
import SwiftUI

struct InsuranceMenu: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var systemImageName: String
    
    static func all() -> [InsuranceMenu] {
        [
            .init(title: "What is Health Insurance?", systemImageName: "airplane.circle"),
            .init(title: "Why are international students required to have OSHC?", systemImageName: "mappin.circle"),
            .init(title: "Who offers and how much it cost?", systemImageName: "dollarsign.circle"),
            .init(title: "What services do OSHC offer to you?", systemImageName: "dollarsign.circle"),
            .init(title: "How Do I Pay for medical Treatment?", systemImageName: "dollarsign.circle"),
            .init(title: "What if I need treatment while I’m in Australia?", systemImageName: "dollarsign.circle"),
            .init(title: "Where can I go for further information or help?", systemImageName: "dollarsign.circle")
        ]
    }
}

struct HealthInsuraceView: View {
  //  @StateObject var locationService: LocationService = .shared
    
    var menuOptions: [InsuranceMenu] {
       InsuranceMenu.all().filter { option in
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
                .navigationTitle("Overseas Student Health Cover")
            }
            
            
        }
    }
 
    @ViewBuilder
    private func destination(for option: InsuranceMenu) -> some View {
        Group {
            switch option.title {
            case "What is Health Insurance?":
                DefinitionView()
            case "Why are international students required to have OSHC?":
                RequiredView()
            case "Who offers and how much it cost?":
                OffersAndCostView()
            case "What services do OSHC offer to you?":
                ServicesView()
            case "How Do I Pay for medical Treatment?":
                PaymentView()
            case "What if I need treatment while I’m in Australia?":
                TreatmentView()
            case "Where can I go for further information or help?":
                FurtherInformationView()
            default:
                Text("Page not Found")
            }
        }
    }
    
}

struct HealthInsurance_Previews: PreviewProvider {
    static var previews: some View {
        HealthInsuraceView()
    }
}
