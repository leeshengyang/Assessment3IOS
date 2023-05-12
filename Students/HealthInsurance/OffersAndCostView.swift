//
//  OffersAndCostView.swift
//  Food Donator
//
//  Created by User on 12/5/2023.
//

import Foundation
import SwiftUI


struct OffersAndCostView: View {
  
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Who offers OSHC and how much will it cost?.").font(.system(size: 22, weight: .bold, design: .rounded))
               
                Image("HealthImage9").resizable().aspectRatio(contentMode: .fit)
                        
                Text ("The Australian Government Department of Health has approved the following health funds to offer OSHC:The cost of OSHC differs depending on the type of cover required. The lowest cost of minimum cover is AUD$478 for 12 months of singles cover, $2,600 for 12 months of couples cover and $4,200 for 12 months of family cover (as of September 2021). You can have your OSHC organised for you by your educational institution or purchase it online through the OSHC provider’s website. You may choose to take out OSHC with your institution’s recommended provider or with another provider.").font(.system(size: 16, weight: .light, design: .serif))
                    .italic()
                
                
                Link("Allianz Care Auatralia", destination: URL(string: "https://www.allianzcare.com.au/en/student-visa-oshc.html")!).font(.system(size: 16, weight: .light, design: .serif))
                Link("Bupa Australia", destination: URL(string: "http://www.bupa.com.au/health-insurance/oshc")!).font(.system(size: 16, weight: .light, design: .serif))
                Link("CBHS International Health", destination: URL(string: "http://www.cbhsinternationalhealth.com.au/overseas-students-oshc")!).font(.system(size: 16, weight: .light, design: .serif))
                Link("Mediband Private", destination: URL(string: "http://www.medibank.com.au/")!).font(.system(size: 16, weight: .light, design: .serif))
                Link("NIB OSHC", destination: URL(string: "http://www.nib.com.au/")!).font(.system(size: 16, weight: .light, design: .serif))
                
                Image("HealthImage7").resizable().aspectRatio(contentMode: .fit)
                
                Text ("You should speak to the various OSHC providers before taking out cover to ensure that the level of cover you have chosen meets your needs. You may wish to compare policies from different OSHC providers to ensure you receive the highest benefits for the lowest cost. You can use Finder to take a look at the differences between plans from selected providers.").font(.system(size: 16, weight: .light, design: .serif))
                    .italic()
                
                
                
                
            }
        }
       // .navigationBarTitle("Overseas Sudent Health Cover")
        
        
            
        
    }
    
    
}

