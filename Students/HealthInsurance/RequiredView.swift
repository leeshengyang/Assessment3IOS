//
//  RequiredView.swift
//
//  Created by User on 12/5/2023.
//

import Foundation
import SwiftUI


struct RequiredView: View {
  
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Why are international students required to have OSHC?").font(.system(size: 22, weight: .bold, design: .rounded)).padding()
                
                Image("healthimage1").resizable().aspectRatio(contentMode: .fit)
                
                Text ("It is a condition of your student visa that you have continuous OSHC for the duration of your stay in Australia. Most Australians are covered by Australia’s national health insurance program, Medicare, which covers a significant amount of the costs required for healthcare services. While Medicare does not cover international students, OSHC allows international students to access health care without experiencing financial hardship.").font(.system(size: 16, weight: .light, design: .serif))
                    .italic().padding()
                Text("Who needs OSHC?").font(.system(size: 22, weight: .bold, design: .rounded))
                
                Image("HealthImage8").resizable().aspectRatio(contentMode: .fit)
            
                Text ("All international students and their family members (partners and children under 18, for example) need OSHC. The only exceptions are Belgian students (who are covered by the Reciprocal Health Care Agreement between Australia and Belgium), Norwegian students (who are provided with health insurance by the Norwegian Government) and Swedish students who have international cover with the Swedish National Board of Student Aid (CSN) or Kammarkollegiet (Swedish students not covered by these agencies will need OSHC). New Zealand citizens residing in Australia can access Medicare benefits.").font(.system(size: 16, weight: .light, design: .serif))
                    .italic().padding()
                
                
            }
        }
      //  .navigationBarTitle("Overseas Sudent Health Cover")
        
        
            
        
    }
    
    
}

