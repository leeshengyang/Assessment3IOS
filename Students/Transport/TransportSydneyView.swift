//
//  TransportSydneyView.swift

//
//  Created by Jiafu Sun on 12/5/2023.
//



import SwiftUI


struct TransportSydneyView: View {
    @State private var isExpandedTrains = false
    @State private var isExpandedBuses = false
    @State private var isExpandedLightRail = false
    @State private var isExpandedFerries = false
    @State private var isExpandedCycling = false
    var body: some View {
        ScrollView {
            Text("Sydney’s ticket system")
                .font(.largeTitle)
                .fontWeight(.heavy)
            VStack(alignment: .leading) {
                VStack {

                    Text("Opal is the electronic ticket system used on public transport in NSW. This includes train, ferry, bus and light rail (tram) travel.\n\nOpal cards are a quick and convenient way of paying for your travel. They can be purchased at most train stations and some post offices, news agencies, convenience stores, supermarkets and other locations. [You can find retailers on this map](http://www.retailers.opal.com.au/) or [order your Opal card online](https://transportnsw.info/tickets-opal/opal/get-opal-card) (opens external site).\n\nTo use public transport in Sydney, you need to tap your Opal, credit or debit card on an Opal reader at the start of your journey. When you get off, tap the card again on the Opal reader. The fare is deducted from your card.\n\nNote: International students are not eligible for reduced fares on NSW public transport.")
                }
                
            }.padding()
            
            
            Image("trains").resizable().aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                
                DisclosureGroup("Trains", isExpanded: $isExpandedTrains) {
                    
                    VStack {
                        Text("Sydney has a wide-reaching train network, made up of over 2000km of tracks. UTS is located right next to Central Station, the main transport hub in Sydney. Buses and the light rail (tram) also serve Central Station.\n\nInstructions to get from Central Station to UTS can be found on [our directions page](https://maps.uts.edu.au/directions.cfm) , under the dropdown ‘train station - Central’.")
                    }
                    
                }.padding()
            }
            Image("bus").resizable().aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                DisclosureGroup("Buses", isExpanded: $isExpandedBuses) {
                    VStack{
                        Text("Sydney’s bus network extends to most suburbs. You will find the Opal reader on the bus, so make sure you tap your card when you board and leave. See the bus stops around UTS on our [transport to UTS](https://maps.uts.edu.au/directions.cfm) page.")
                        
                    }
                }.padding()
            }
            Image("lightrail").resizable().aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                DisclosureGroup("Light Rail", isExpanded: $isExpandedLightRail) {
                    
                    VStack{
                        Text("There are a number of light rail stops near UTS - hop on to access the UTS Moore Park campus and the central business district. The light rail also stops at the Sydney Fish Market, Darling Harbour and Chinatown.")
                        
                    }
                }.padding()
                
                Image("ferries").resizable().aspectRatio(contentMode: .fit)
                VStack(alignment: .leading) {
                    DisclosureGroup("Ferries", isExpanded: $isExpandedFerries) {
                        VStack{
                            Text("Many people commute by ferry from beach and harbour-side suburbs to Sydney’s main ferry terminal at Circular Quay. Travelling on a ferry is a scenic way to explore destinations along Sydney Harbour, like Manly, Taronga Zoo and Luna Park.")
                            
                        }
                    }.padding()
                    
                    Image("cycling").resizable().aspectRatio(contentMode: .fit)
                    VStack(alignment: .leading) {
                        DisclosureGroup("Cycling", isExpanded: $isExpandedCycling) {
                            VStack{
                                Text("Generally, cyclists are not allowed to ride on the footpath. If you ride a bike, you will often need to share the road with cars, buses and trucks. Some streets have dedicated bicycle lanes, or paths that are shared with pedestrians. UTS also offers free and secure bike parking on campus. Learn more about cycling to UTS here.")
                                
                            }
                        }.padding()
                    }
                }
                
            }
        }
    }
    
}
