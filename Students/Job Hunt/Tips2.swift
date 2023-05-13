//
//  Tips2.swift
//  Student
//
//  Created by Ching Ching on 12/5/2023.
//

import SwiftUI
struct job_hunt_tips_2: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("job_hunt_tips_2").resizable()
                    .aspectRatio(contentMode: .fit)
                
                
                Text("Tips 2 :Know the Local Job Market").font(.headline)
                
                    Spacer().frame( height : 5)
                
                Text ("It's important for international students to conduct thorough research of the local job market to find potential employers and job opportunities that match their career goals and interests. Attending job fairs, networking events, and informational interviews can be beneficial in gaining insights about the local job market and building connections with professionals in their field. These activities can help international students expand their professional network, showcase their skills and qualifications, and increase their chances of securing a job that aligns with their aspirations.").font(.system(size: UIFont.preferredFont(forTextStyle: .body).pointSize, weight: .light, design: .serif))
                    .italic().padding().multilineTextAlignment(.leading)

                Spacer().frame( height : 40)
                Image("footer image").resizable().aspectRatio(contentMode: .fit)
            }
        }
//        .navigationBarTitle("Job hunting guide")
    }
}


struct job_hunt_tips_2_Previews: PreviewProvider {
    static var previews: some View {
        job_hunt_tips_2()
    }
}

