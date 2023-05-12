//
//  FurtherInformationView.swift
//  Food Donator
//
//  Created by User on 12/5/2023.
//

import Foundation
import SwiftUI
struct FurtherInformationView: View {
  
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Where can I go for further information or help?").font(.system(size: 22, weight: .bold, design: .rounded))
                
                Image("HealthImage13").resizable().aspectRatio(contentMode: .fit)
                
                Text ("If you require any further information about OSHC now or during your stay in Australia, you can visit privatehealth.gov.au, call 1300 737 299  or 13 14 50 for a translation service or contact one of the OSHC providers listed above.").font(.system(size: 16, weight: .light, design: .serif)).italic()
                 
            }
        }
    }
   
}
