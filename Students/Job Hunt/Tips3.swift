//
//  Tips3.swift
//  Student
//
//  Created by Ching Ching on 12/5/2023.
//

import SwiftUI
struct job_hunt_tips_3: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("job_hunt_tips_3").resizable()
                    .aspectRatio(contentMode: .fit)
                
                
                Text("Tips 3 :Understand Visa and Work Permit Regulations").font(.headline)
                
                    Spacer().frame( height : 5)
                
                Text ("International students should be well-versed in the visa and work permit regulations of the country they wish to work in to ensure they are legally permitted to work. Familiarizing themselves with these regulations can help them avoid any potential legal issues and ensure a smooth job-hunting process. They can seek guidance from their university's career center or an immigration lawyer to understand the visa and work permit requirements and how to obtain them. By proactively researching and complying with these regulations, international students can pursue their career aspirations and build a successful professional future.").font(.system(size: 16, weight: .light, design: .serif))
                    .italic().padding().multilineTextAlignment(.leading)

                
                Image("footer image").resizable().aspectRatio(contentMode: .fit)
            }
        }
//        .navigationBarTitle("Job hunting guide")
    }
}


struct job_hunt_tips_3_Previews: PreviewProvider {
    static var previews: some View {
        job_hunt_tips_3()
    }
}
