//
//  File.swift
//  International Student App
//
//  Created by Ching Ching on 12/5/2023.
//

import SwiftUI
struct Job_Hunting_Guide: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("Hon_job_hunting _image").resizable()
                    .aspectRatio(contentMode: .fit)
                
                
                Text("International student Job hunting guide").font(.headline)
                
                    Spacer().frame( height : 5)
                
                Text ("Job hunting as an international student can be a challenging process due to a range of factors such as cultural differences, work permit regulations, and language barriers. Nevertheless, there are strategies that international students can employ to enhance their chances of landing a job in their area of expertise. In this article, we will discuss some useful tips to help international students overcome these obstacles and succeed in their job search.").font(.system(size: 17, weight: .light, design: .serif))
                    .italic().padding().multilineTextAlignment(.leading)

                    
                    
                Spacer().frame( height : 100)
                
                Image("footer image").resizable().aspectRatio(contentMode: .fit)
            }
        }
        .navigationBarTitle("Job hunting guide")
    }
}


struct Job_Hunting_GuidePreviews: PreviewProvider {
    static var previews: some View {
        Job_Hunting_Guide()
    }
}

