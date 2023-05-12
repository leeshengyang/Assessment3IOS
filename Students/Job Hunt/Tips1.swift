//
//  Tips1_Start_Early.swift
//  Student
//
//  Created by Ching Ching on 12/5/2023.
//

import SwiftUI
struct job_hunt_tips_1: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("job_hunt_tips_1").resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text("Tips 1 : Start Early").font(.headline)
                
                    Spacer().frame( height : 5)
                
                Text ("International students should understand that starting early is crucial in the job hunting process, as it can be time-consuming to prepare resumes, cover letters, portfolios, and research potential employers and job opportunities. Ideally, they should begin searching for jobs at least six months before graduation to ensure they have enough time to showcase their qualifications and stand out in a competitive job market. With careful planning and preparation, international students can increase their chances of securing a job that aligns with their career goals and allows them to succeed in their professional endeavors.").font(.system(size: 16, weight: .light, design: .serif))
                    .italic().padding().multilineTextAlignment(.leading)

                Spacer().frame( height : 40)
                Image("footer image").resizable().aspectRatio(contentMode: .fit)
            }
        }
        .navigationBarTitle("Job hunting guide")
    }
}


struct job_hunt_tips_1_Previews: PreviewProvider {
    static var previews: some View {
        job_hunt_tips_1()
    }
}
