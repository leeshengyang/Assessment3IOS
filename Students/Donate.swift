//
//  Donate.swift
//  Landmarks
//
//  Created by Sheng Yang Lee on 21/6/2022.
//  Hon Ching Chan hello
//  Copyright © 2022 Apple. All rights reserved.
//

/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI



struct DonateFundsList: View {
    @State var CCFirstName: String = ""
    @State var CCLastName: String = ""
    @State var Amount: String = ""
    @State var CCExpiry: String = ""

    
    @State var FirstName: String = ""
    @State var LastName: String = ""

    @State var Address: String = ""
    @State var Email: String = ""
    
    
    
    @State var isPrivate: Bool = true
    @State var notificationsEnabled: Bool = false
    @State private var previewIndex = 0
    var previewOptions = ["Always", "When Unlocked", "Never"]
    
    var body: some View {
        NavigationView {
            Form {
                Text("This App is run by non-profit organization. Please support us! Thank you.")
                    .font(.system(size: 16, weight: .light, design: .serif))
                    .italic()
                Section(header: Text("Donation Details").font(.system(size: 30, weight: .bold, design: .rounded))) {
                    TextField("First Name", text: $CCFirstName)
                    TextField("Last Name", text: $CCLastName)
                    TextField("Amount", text: $Amount)

                }
            
            Section(header: Text("Donation Invoice").font(.system(size: 30, weight: .bold, design: .rounded))) {
                TextField("First Name", text: $FirstName)
                TextField("Last Name", text: $LastName)
 
                TextField("Address", text: $Address)
                TextField("Email", text: $Email)
               // TextField("Email", text: $Email)
            }
        }
        }
        .navigationBarTitle("Donation")
    }
    
    
}
