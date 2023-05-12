//
//  Tips3.swift
//  Food Donator
//
//  Created by Ching Ching on 12/5/2023.
//

import SwiftUI
struct job_hunt_tips_7: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("job_hunt_tips_7").resizable()
                    .aspectRatio(contentMode: .fit)
                
                
                Text("Tips 7 : Be Persistent").font(.headline)
                
                    Spacer().frame( height : 5)
                
                Text ("Even though job hunting can be an arduous and disheartening experience, international students must persevere and persist in their efforts. Consistently applying for jobs, following up with potential employers, and soliciting feedback on their applications and interviews can increase their chances of landing a job. Additionally, maintaining a positive and self-assured outlook throughout the job-hunting process can have a significant impact on their morale and resilience. By staying determined and focused, international students can overcome the challenges of job hunting and achieve success in their career aspirations.").font(.system(size: 16, weight: .light, design: .serif))
                    .italic().padding().multilineTextAlignment(.leading)

                Spacer().frame( height : 40)
                Image("footer image").resizable().aspectRatio(contentMode: .fit)
            }
        }
        .navigationBarTitle("Job hunting guide")
    }
}


struct job_hunt_tips_7_Previews: PreviewProvider {
    static var previews: some View {
        job_hunt_tips_7()
    }
}
