//
//  Accommadationscities.swift
//  Food Donator
//
//  Created by UTS on 13/5/2023.
//

import SwiftUI

struct Accommadationscities: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("The most big and imprtant cities in Australia that international students can live and study in them. Here are the top universities in Austrailia:").font(.headline)
                    .frame(maxWidth: .infinity, alignment: .center).padding(.top,10)
            
                Image("university").resizable().aspectRatio(contentMode: .fit).padding(.top,5)
                Text("Sydney: ").font(.system(size: 22, weight: .bold, design: .rounded)).padding(.top,5)
                Link("The University of Sydney", destination: URL(string: "https://www.sydney.edu.au")!).font(.system(size: 16, weight: .light, design: .serif))
                    .padding(.bottom,5)
                Text("Adeliade: ").font(.system(size: 22, weight: .bold, design: .rounded))
                Link("Adeliade University", destination: URL(string: "https://international.adelaide.edu.au")!).font(.system(size: 16, weight: .light, design: .serif)) .padding(.bottom,5)
                Text("Brisbane: ").font(.system(size: 22, weight: .bold, design: .rounded)).padding(.bottom,5)
                
                Link("Brisbane University", destination: URL(string: "https://study.uq.edu.au/?utm_source=topuniversities.com&utm_medium=referral&utm_campaign=int-qstu")!).font(.system(size: 16, weight: .light, design: .serif)).padding(.bottom,5)
                
                Text("Canberra: ").font(.system(size: 22, weight: .bold, design: .rounded))
                               Link("Canberra University", destination: URL(string: "https://www.anu.edu.au")!).font(.system(size: 16, weight: .light, design: .serif)).padding(.bottom,5)
//              Text("Melbourne: ").font(.system(size: 22, weight: .bold, design: .rounded))
//            //                Text("Melbourne: ").font(.system(size: 22, weight: .bold, design: .rounded))
//                            Link("Melbourne University", destination: URL(string: "https://www.unimelb.edu.au")!).font(.system(size: 16, weight: .light, design: .serif))

//                            Text("ALso, there are more big cities if international students want to find more about the universities accommadations, they can find them in this link:").font(.system(size: 22, weight: .regular, design: .rounded))
//                            Link("Other Universities", destination: URL(string: " https://www.topuniversities.com/university-rankings-articles/world-university-rankings/top-universities-australia-city")!).font(.system(size: 16, weight: .light, design: .serif))
            }
        }
        
    }
}

struct Accommadationscities_Previews: PreviewProvider {
    static var previews: some View {
        Accommadationscities()
    }
}