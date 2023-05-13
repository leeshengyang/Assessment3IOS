//
//  Donate.swift
//  Landmarks
//
//  Created by Sheng Yang Lee
//  Hon Ching Chan hello
//  
//

/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI



struct DonateFundsList: View {
    @State var FirstName: String = ""
    @State var LastName: String = ""
    @State var Mobile: String = ""
    @State var Address: String = ""
    @State var Email: String = ""
    @State var SMSAlerts: String = ""
    @State var yesAlerts: Bool = true
    @State var yesNewsLetters: Bool = true
    @State var notificationsEnabled: Bool = false
    @State private var previewIndex = 0
    var previewOptions = ["Important", "All News", "None"]
    
    
    var body: some View {
        NavigationView {
            Form {
                Text("You may get our latest Newsletter by subscribing here")
                    .font(.system(size: 16, weight: .light, design: .serif))
                    .italic()
                Section(header: Text("Please Enter Details").font(.system(size: 30, weight: .bold, design: .rounded))) {
                    TextField("First Name:", text: $FirstName)
                    TextField("Last Name:", text: $LastName)
                    TextField("Address", text: $Address)
                    Button(action: {
                        print("Thank you!")
                    }) {
                        Text("Submit")
                        
                    }
                }
                Section(header: Text("Email Newsletter").font(.system(size: 30, weight: .bold, design: .rounded))) {
                    TextField("Email Address:", text: $Email)
                    
                    Toggle(isOn: $yesNewsLetters) {
                        Text("Receive Email Newsletters")
                        Button(action: {
                            print("Thank you!")
                        }) {
                            Text("Submit")
                        }
                    }
                }
                
                Section(header: Text("SMS Alerts").font(.system(size: 30, weight: .bold, design: .rounded))) {
                    TextField("Mobile Number:", text: $Mobile)
                    Toggle(isOn: $yesAlerts) {
                        Text("Receive SMS Alerts")
                        Button(action: {
                            print("Thank you!")
                        }) {
                            Text("Submit")
                        }
                    }
                }
                
                Section(header: Text("App Alerts").font(.system(size: 30, weight: .bold, design: .rounded))) {
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Allow Notifications")
                    }
                }
                
                Section(header: Text("About Students App").font(.system(size: 30, weight: .bold, design: .rounded))) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("1.1.15\n Created by\n Sheng Yang\n Hon Ching\n Jiafu Sun\n Ishrat Jahan\n Zinh AL-Sweedy\n")
                    }
                }
            }
        }
    }
}

