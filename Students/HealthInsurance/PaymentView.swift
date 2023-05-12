//
//  PaymentView.swift
//  Food Donator
//
//  Created by User on 12/5/2023.
//

import Foundation
import SwiftUI
struct PaymentView: View {
  
    
    var body: some View {
        ScrollView {
            VStack {
                Text("How do I pay for medical treatment?").font(.system(size: 22, weight: .bold, design: .rounded))
                Image("HealthImage5").resizable().aspectRatio(contentMode: .fit)
                
                Text ("In most cases, OSHC will cover a good proportion of your medical expenses. When you receive a bill for medical treatment, there are generally two choices. You can pay the bill and then get a refund from your OSHC provider, or have the bill sent directly to your OSHC provider for payment. For pharmaceutical claims, you need to pay for your item at the pharmacy first, then claim back from your OSHC provider. Hospital bills are normally sent directly to OSHC providers for payment, but arrangements for payment of treatment expenses will vary between health insurers. Payment arrangements differ between OSHC providers, so contact your provider for more information.").font(.system(size: 16, weight: .light, design: .serif))
                    .italic()
                
                Text("How long do I need to be covered?").font(.system(size: 22, weight: .bold, design: .rounded))
                
                Image("HealthImage12").resizable().aspectRatio(contentMode: .fit)
            
                Text ("You must obtain OSHC for the proposed duration of your student visa and renew your OSHC if you extend the length of your visa.").font(.system(size: 16, weight: .light, design: .serif))
                    .italic()
                Text("Can I transfer to a different OSHC provider?").font(.system(size: 22, weight: .bold, design: .rounded))
                
                Image("HealthImage13").resizable().aspectRatio(contentMode: .fit)
                
                Text ("You can transfer to a different OSHC provider at any time, but some providers charge a ‘refund processing fee’ if you transfer to a new policy before your old one ends.").font(.system(size: 16, weight: .light, design: .serif)).italic()
                
               /* Text("Where can I go for further information or help?").font(.system(size: 22, weight: .bold, design: .rounded))
                
                Image("HealthImage13").resizable().aspectRatio(contentMode: .fit)
                
                Text ("If you require any further information about OSHC now or during your stay in Australia, you can visit privatehealth.gov.au, call 1300 737 299  or 13 14 50 for a translation service or contact one of the OSHC providers listed above.").font(.system(size: 16, weight: .light, design: .serif)).italic()
                  */
            }
        }
    }
   
}
