//
//  ServicesView.swift
//
//  Created by User on 12/5/2023.
//

import Foundation
import SwiftUI


struct ServicesView: View {
    
    var body: some View {
        ScrollView {
            VStack {
  
                Text("What services does OSHC offer you?").font(.system(size: 22, weight: .bold,design: .rounded))

                Image("HealthImage11").resizable().aspectRatio(contentMode: .fit)
                
                Text ("Basic OSHC covers visits to the doctor, some hospital treatment, limited pharmaceuticals, ambulance cover, some prosthetic devices and access to private hospitals and day surgeries. Dental, optical and physiotherapy treatments are not covered by basic OSHC but are available as ‘extras’ from some OSHC providers as part of more comprehensive OSHC cover.").font(.system(size: 16, weight: .light, design: .serif)).italic().padding()
              
                Text("Does OSHC cover all medical and hospital expenses?").font(.system(size: 22, weight: .bold, design: .rounded))
                
                Image("HealthImages4").resizable().aspectRatio(contentMode: .fit)
                
                Text("No. Part but not all of your expenses are covered. In most cases, OSHC will cover a good proportion of the costs. You should speak to the OSHC providers before taking out cover to ensure that you have the best cover, with the lowest cost and highest benefits.").font(.system(size: 16, weight: .light, design: .serif))
                    .italic().padding()
             
                Text("What is extra OSHC?").font(.system(size: 22, weight: .bold, design: .rounded))
                
                Image("HealthImage10").resizable().aspectRatio(contentMode: .fit)
                
                Text("Extra OSHC gives international students access to services that are not covered by OSHC medical and hospital cover — dental, physiotherapy and optical services, for example. OSHC providers will be able to provide full details of the services available under extra OSHC cover and the additional cost involved.").font(.system(size: 16, weight: .light, design: .serif)).italic().padding()
            }
           }
        
    }
   
}

