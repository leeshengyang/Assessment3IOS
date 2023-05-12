//
//  Created by Ching Ching on 12/5/2023.
//

import Foundation
struct DefinitionView: View {
  
    
    var body: some View {
        ScrollView {
            VStack {
             
                Image("HealthImages3").resizable()
                    .aspectRatio(contentMode: .fit)
                NavigationView {
                    Form {
                        //Text("Overseas Sudent Health Cover")
                         //   .font(.system(size: 30, weight: .bold, design: .serif))
                        Section(header: Text("What is Health Insurance or Coverage.").font(.system(size: 22, weight: .bold, design: .rounded))) {
                            Text ("Health Insurace is defined as coverage that provides for the payments of benifits as a result of sickness or injury. It includes insurance for losses from accidents, medical expences, disability, accidental death and dismemberment ").font(.system(size: 16, weight: .light, design: .serif))
                                .italic()
                        }
                    
                    
                    }
                    
                }
                Image("HealthImage2").resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .navigationBarTitle("Overseas Sudent Health Cover")
        
        
            
        
    }
    
    
}

