//
//  Accommadationwebsites.swift
//  Food Donator
//
//  Created by UTS on 13/5/2023.
//
import SwiftUI

struct Accommadationwebsites: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("booking").resizable()// accommdations image
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .padding(.bottom , 20)
                Text("Some websites for the inernational students for booking a private rent:")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .center).padding(.top,10)
                Divider()
                VStack(alignment: .leading){
                  
                    Link("flatmates", destination: URL(string: "https://www.flatmates.com.au")!).font(.system(size: 16, weight: .light, design: .serif))
                 
                    Link("2stay", destination: URL(string: "https://www.2stay.com.au")!).font(.system(size: 16, weight: .light, design: .serif))
                    
                    Link("Domain", destination: URL(string: "https://www.domain.com.au")!).font(.system(size: 16, weight: .light, design: .serif))

                    
                }.padding()
            }
               
                Spacer().frame(height : 20)// adding space between sections
                Text("How much is accommodation cost in Australia for international students?").font(.headline)
                    .frame(maxWidth: .infinity, alignment: .center)
            Spacer().frame(height : 10)// adding space between sections
                Text("The cost for accommodation for international students in Australia could be vary between $440 to $1.200. ")
            Spacer().frame(height : 10)// adding space between sections
                Text("Also, it is dependent on the type of accommodation the students could choose for living, wethere a student wants to stay in a shared room, accomdation with family, or in a hostel.")
            }
        }
    }


struct Accommadationwebsites_Previews: PreviewProvider {
    static var previews: some View {
        Accommadationwebsites()
    }
}

