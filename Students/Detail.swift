//
//  Detail.swift
//  Food Donator
//
//  Created by UTS on 22/6/2022.
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
