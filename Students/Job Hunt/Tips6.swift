//
//  Tips6.swift
//  Student
//
//  Created by Ching Ching on 12/5/2023.
//

import SwiftUI
struct job_hunt_tips_6: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("job_hunt_tips_6").resizable()
                    .aspectRatio(contentMode: .fit)
                
                
                Text("Tips 6 : Build Your Professional Network").font(.headline)
                
                    Spacer().frame( height : 5)
                
                Text ("Building a strong professional network is essential for international students seeking to establish a successful career. They can participate in various networking events, job fairs, and industry conferences to connect with professionals in their field and stay informed about the latest trends and opportunities. In addition, connecting with alumni from their university or professional associations can help them expand their network and obtain useful insights into the job market. By building a robust professional network, international students can increase their chances of finding job openings, accessing mentorship opportunities, and receiving valuable career guidance.").font(.system(size: 16, weight: .light, design: .serif))
                    .italic().padding().multilineTextAlignment(.leading)

                Spacer().frame( height : 40)
                Image("footer image").resizable().aspectRatio(contentMode: .fit)
            }
        }
//        .navigationBarTitle("Job hunting guide")
    }
}


struct job_hunt_tips_6_Previews: PreviewProvider {
    static var previews: some View {
        job_hunt_tips_6()
    }
}
