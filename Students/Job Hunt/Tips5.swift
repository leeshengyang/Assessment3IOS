//
//  Tips5.swift
//  Student
//
//  Created by Ching Ching on 12/5/2023.
//

import SwiftUI
struct job_hunt_tips_5: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("job_hunt_tips_5").resizable()
                    .aspectRatio(contentMode: .fit)
                
                
                Text("Tips 5 : Practice Interviewing Skills").font(.headline)
                
                    Spacer().frame( height : 5)
                
                Text ("Interviews can be nerve-wracking for international students, but preparation can help alleviate anxiety and increase their confidence. Practicing with friends, family members, or career counselors can enhance their interviewing skills and improve their communication techniques. Researching common interview questions and developing responses that showcase their skills and qualifications can also help them perform well in interviews. Additionally, dressing appropriately and arriving on time can demonstrate professionalism and leave a positive first impression. By mastering these interview skills, international students can showcase their talents and land their dream job.").font(.system(size: 16, weight: .light, design: .serif))
                    .italic().padding().multilineTextAlignment(.leading)

                Spacer().frame( height : 40)
                Image("footer image").resizable().aspectRatio(contentMode: .fit)
            }
        }
//        .navigationBarTitle("Job hunting guide")
    }
}


struct job_hunt_tips_5_Previews: PreviewProvider {
    static var previews: some View {
        job_hunt_tips_5()
    }
}
