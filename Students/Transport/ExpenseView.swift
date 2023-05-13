
import Foundation
//
//  expenseView.swift
//
//  Created by 孙嘉甫 on 2023/5/12.
//

import SwiftUI


struct expenseView: View {
    @State private var isDaily = false
    @State private var isWeekly = false
    @State private var isSunday = false
    @State private var isAirport = false
    
    var body: some View {
        ScrollView {
            Text("Opal card traveling expenses")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Image("Daily").resizable().aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                
                DisclosureGroup("Adult Daily Cap", isExpanded: $isDaily) {
                    
                    VStack {
                        Text("Sydney has a wide-reaching train network, made up of over 2000km of tracks. UTS is located right next to Central Station, the main transport hub in Sydney. Buses and the light rail (tram) also serve Central Station.\n\nInstructions to get from Central Station to UTS can be found on [our directions page](https://maps.uts.edu.au/directions.cfm) , under the dropdown ‘train station - Central’.")
                    }
                    
                }.padding()
            }
            Image("Weekly").resizable().aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                DisclosureGroup("Weekly Cap", isExpanded: $isWeekly) {
                    VStack{
                        Text("Sydney’s bus network extends to most suburbs. You will find the Opal reader on the bus, so make sure you tap your card when you board and leave. See the bus stops around UTS on our [transport to UTS](https://maps.uts.edu.au/directions.cfm) page.")
                        
                    }
                }.padding()
            }
            Image("Sunday").resizable().aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                
                DisclosureGroup("Sunday Cap", isExpanded: $isSunday) {
                    
                    VStack {
                        Text("Sydney has a wide-reaching train network, made up of over 2000km of tracks. UTS is located right next to Central Station, the main transport hub in Sydney. Buses and the light rail (tram) also serve Central Station.\n\nInstructions to get from Central Station to UTS can be found on [our directions page](https://maps.uts.edu.au/directions.cfm) , under the dropdown ‘train station - Central’.")
                    }
                    
                }.padding()
            }
            Image("Airport").resizable().aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                DisclosureGroup("Sydney Airport station access fee", isExpanded: $isAirport) {
                    VStack{
                        Text("Sydney’s bus network extends to most suburbs. You will find the Opal reader on the bus, so make sure you tap your card when you board and leave. See the bus stops around UTS on our [transport to UTS](https://maps.uts.edu.au/directions.cfm) page.")
                        
                    }
                }.padding()
            }
            
        }
        
    }
}

struct expenseView_Preview: PreviewProvider {
    static var previews: some View {
        expenseView()
    }
}

