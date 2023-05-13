//
//  HealthCover.swift
//  Student
//
//  Created by Ishrat on 11/5/2023.
//

import SwiftUI


struct DefinitionView: View {
  
    
    var body: some View {
        ScrollView {
            VStack {
                Text("What is Health Insurance or Coverage.").font(.system(size: 20, weight: .bold, design: .rounded))
                Image("HealthImages3").resizable()
                                     .aspectRatio(contentMode: .fit)
                Text ("Health Insurace is defined as coverage that provides for the payments of benifits as a result of sickness or injury. It includes insurance for losses from accidents, medical expences, disability, accidental death and dismemberment ").font(.system(size: 16, weight: .light, design: .serif))
                    .italic().padding()
                Image("HealthImage2").resizable()
                    .aspectRatio(contentMode: .fit)
               // Image("HealthImage2").resizable()
            }
        }
       // Text("Overseas Sudent Health Cover").font(.system(size: 25, weight: .bold, design: .monospaced))
        //.navigationBarTitle("Overseas Sudent Health Cover")
            
        
    }
    
    
}

