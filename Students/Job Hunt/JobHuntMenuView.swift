//
//  JobHuntMenuView.swift
//  Student
//
//  Created by Ching Ching on 12/5/2023.
//

import SwiftUI

struct job_Hunt_Menu: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var systemImageName: String
    
    static func all() -> [job_Hunt_Menu] {
        [
            .init(title: "Intro to Student Job Hunting", systemImageName: "info.circle"),
            .init(title: "Tips1 : Start Early", systemImageName: "1.circle"),
            .init(title: "Tips2 : Know the Local Job Market", systemImageName: "2.circle"),
            .init(title: "Tips3 : Understand Visa and Work Permit Regulations", systemImageName: "3.circle"),
            .init(title: "Tips4 : Tailor Your Resume and Cover Letter", systemImageName: "4.circle"),
            .init(title: "Tips5 : Practice Interviewing Skills", systemImageName: "5.circle"),
            .init(title: "Tips6 : Build Your Professional Network", systemImageName: "6.circle"),
            .init(title: "Tips7 : Be Persistent", systemImageName: "7.circle")
        ]
    }
}

struct job_Hunt_Menu_View: View {
    //  @StateObject var locationService: LocationService = .shared
    
    var menuOptions: [job_Hunt_Menu] {
        job_Hunt_Menu.all().filter { option in
            guard option.title == "" else {
                return true
            }
            return true
        }
        
    }
    
    var body: some View {
        TabView {
            NavigationView {
                List {
                    ForEach(menuOptions, id: \.self) { option in
                        NavigationLink {
                            Job_Menu_item(for: option)
                        } label: {
                            HStack {
                                Image(systemName: option.systemImageName)
                                Text(option.title)
                            }
                        }
                    }
                }
                .navigationTitle("Job Hunting Guide")
            }
            
            
        }
    }
    
}

// function to prevent page link error
@ViewBuilder
private func Job_Menu_item(for option: job_Hunt_Menu) -> some View {
    Group {
        switch option.title {
        case "Intro to Student Job Hunting":
            Job_Hunting_Guide()
        case "Tips1 : Start Early":
            job_hunt_tips_1()
        case "Tips2 : Know the Local Job Market":
            job_hunt_tips_2()
        case "Tips3 : Understand Visa and Work Permit Regulations":
            job_hunt_tips_3()
        case "Tips4 : Tailor Your Resume and Cover Letter":
            job_hunt_tips_4()
        case "Tips5 : Practice Interviewing Skills":
            job_hunt_tips_5()
        case "Tips6 : Build Your Professional Network":
            job_hunt_tips_6()
        case "Tips7 : Be Persistent":
            job_hunt_tips_7()

        default:
            Text("Page not Found")
        }
    }
}

struct Job_Menu_Previews: PreviewProvider {
    static var previews: some View {
        job_Hunt_Menu_View()
    }
}
