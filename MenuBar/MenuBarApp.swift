//
//  MenuBarApp.swift
//  MenuBar
//
//  Created by hesper on 2023-02-23(Thu).
//

import SwiftUI

@main
struct MenuBarApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}
