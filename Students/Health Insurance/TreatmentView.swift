//
//  TreatmentView.swift
//  Food Donator
//
//  Created by User on 12/5/2023.
//

import Foundation
import SwiftUI


struct TreatmentView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                
                
                Text("What if I need treatment while I’m in Australia?").font(.system(size: 22, weight: .bold, design: .rounded))
                
                Image("HealthImage15").resizable().aspectRatio(contentMode: .fit)
                
                Text("The best option is to visit a doctor or go to the emergency department of a public hospital. Many educational institutions have a doctor on campus or nearby. OSHC providers often have direct billing relationships with medical clinics to ensure students can access treatment with no or minimal up-front expenses. The doctor will refer you to a specialist or hospital if further treatment is required. You can choose either a public or a private hospital, but you should contact your OSHC provider before going to a private hospital to check that you will be covered for treatment at that hospital. You should also contact your OSHC provider before going to a public hospital in a non-emergency situation or for an elective procedure to ensure that you are covered. In an emergency, you should go immediately to the emergency department of the nearest hospital, calling an ambulance on 000 if appropriate.").font(.system(size: 16, weight: .light, design: .serif)).italic()
             
            }
        }
        
    }
   
}
