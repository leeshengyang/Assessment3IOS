//
//  Accommadations.swift
//
//  Created by UTS on 12/5/2023.
//

import SwiftUI

struct Accommadations: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("accommadations").resizable()// accommdations image
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .padding(.bottom , 20)
                
                Text("As  an inernational student you can choose from different options for rental, you could have the following options:")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .center)
                Divider()
                VStack(alignment: .leading){
                    Text("1.University Accommodations.")
                    Text("2.Hostels.")
                    Text("3.Private Rentals.")
                    Text("4.Homestay.")
                    
                }.padding()
            }
               
                Spacer().frame(height : 20)// adding space between sections
                Text("How much is accommodation cost in Australia for international students?").font(.headline)
                    .frame(maxWidth: .infinity, alignment: .center)
            Spacer().frame(height : 10)// adding space between sections
                Text("The cost for accommodation for international students in Australia could be vary between $440 to $1,200. ").padding()
            Spacer().frame(height : 10)// adding space between sections
                Text("Also, it is dependent on the type of accommodation the students could choose for living, wethere a student wants to stay in a shared room, accomdation with family, or in a hostel.").padding()
            }
        }
    }


struct Accommadations_Previews: PreviewProvider {
    static var previews: some View {
        Accommadations()
    }
}
