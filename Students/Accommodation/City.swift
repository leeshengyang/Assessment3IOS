//
//  City.swift
//  students
//
//  Created by Jiafu Sun on 13/5/2023.
//

import SwiftUI

struct Accommadationscities: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("The most big and imprtant cities in Australia that international students can live and study in them. Here are the top universities in Austrailia:").font(.headline)
                
                Image("university").resizable().aspectRatio(contentMode: .fit).padding(.top,5)
                
                Text("Sydney \n[The University of Sydney](https://www.sydney.edu.au) \n").padding().multilineTextAlignment(.center)
                
                Text("Adelaide \n[Adelaide University](https://international.adelaide.edu.au) \n").padding().multilineTextAlignment(.center)
                
                Text("Brisbane \n[Brisbane University](https://study.uq.edu.au/?utm_source=topuniversities.com&utm_medium=referral&utm_campaign=int-qstu) \n").padding().multilineTextAlignment(.center)
                
                Text("Canberra \n[Canberra University](https://www.anu.edu.au) \n").padding().multilineTextAlignment(.center)
                
                Text("Melbourne \n[Melbourne University](https://www.unimelb.edu.au)").padding().multilineTextAlignment(.center)
                
                Text("Also, there are more big cities. If international students want to find more about the universities accommodations, they can find them in this link: \n[Other Universities](https://www.topuniversities.com/university-rankings-articles/world-university-rankings/top-universities-australia-city)").padding().multilineTextAlignment(.center)
                
                
                
            }}}}

struct Accommadationscities_Previews: PreviewProvider {
    static var previews: some View {
        Accommadationscities()
    }
}
