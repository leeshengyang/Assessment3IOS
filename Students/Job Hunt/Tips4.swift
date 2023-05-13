//
//  Tips4.swift
//  Student
//
//  Created by Ching Ching on 12/5/2023.
//

import SwiftUI
struct job_hunt_tips_4: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("job_hunt_tips_4").resizable()
                    .aspectRatio(contentMode: .fit)
                
                
                Text("Tips 4 : Tailor Your Resume and Cover Letter").font(.headline)
                
                    Spacer().frame( height : 5)
                
                Text ("To increase their chances of securing a job, international students must customize their resume and cover letter to fit each job opportunity they apply for. This requires highlighting relevant skills, experiences, and qualifications that closely match the job description and requirements. Using clear and concise language can also improve the readability and comprehension of the application. It's also crucial to avoid using unfamiliar or overly complex vocabulary that may confuse or misrepresent their abilities. By tailoring their application to each job opportunity, international students can stand out from the competition and demonstrate their value to potential employers.").font(.system(size: 16, weight: .light, design: .serif))
                    .italic().padding().multilineTextAlignment(.leading)

                Spacer().frame( height : 40)
                Image("footer image").resizable().aspectRatio(contentMode: .fit)
            }
        }
//        .navigationBarTitle("Job hunting guide")
    }
}


struct job_hunt_tips_4_Previews: PreviewProvider {
    static var previews: some View {
        job_hunt_tips_4()
    }
}
