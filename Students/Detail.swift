//
//  Detail.swift
//
//  Created by UTS
//

import SwiftUI

struct Detail: View {
    var menuOption: MenuOption
    var body: some View {
        Label(menuOption.title, systemImage: menuOption.systemImageName)
    }
}

private var previewMenuOption: MenuOption = .init(title: "Sample Detail Title", systemImageName: "house.fill")

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(menuOption: previewMenuOption)
    }
}
