//
//  Accommidationinformation.swift

//
//  Created by UTS on 13/5/2023.
//

import SwiftUI

struct Accommadationinformation: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("A few factors that the international studends need to consider when they want to choose their accommodations, such as:").font(.system(size: 20, weight: .bold, design: .rounded)).padding(.top,5)
                
                Image("accommdationfactors").resizable().aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .padding(.bottom , 20)
                     
                Text("budget, shared or individual room, near school, living with Austrlaian family or not, and much more the students need to consider them.")
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .center)
              
            }
               
            }
        }
    }


struct Accommadationinformation_Previews: PreviewProvider {
    static var previews: some View {
        Accommadationinformation()
    }
}
