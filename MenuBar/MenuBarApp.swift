//
//  MenuBarApp.swift
//  MenuBar
//
//  Created by hesper on 2023-02-23(Thu).
//

import SwiftUI

@main
struct MenuBarApp: App {
    //注入app delegate流程中初始化状态栏与菜单
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}
