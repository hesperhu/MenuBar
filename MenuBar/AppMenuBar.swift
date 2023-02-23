//
//  AppMenuBar.swift
//  MenuBar
//
//  Created by hesper on 2023-02-23(Thu).
//

import Foundation
import SwiftUI


/**
 管理应用的菜单
 
 - important: 无
 
 ```
 let menu = AppMenuBar()
 ```
 */
class AppMenuBar: NSObject {
    let menu = NSMenu()
}

extension AppMenuBar {
    /**
    创建状态栏菜单
    
    - important: 无
    - returns: NSMenu
     ```
     statusBarItem.menu = menu.createMenu()
     ```
    */
    func createMenu() -> NSMenu {
        
        let menuView =
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        
        let topView = NSHostingController(rootView: menuView)
        topView.view.frame.size = CGSize(width: 225, height: 225)
        
        let menuItem = NSMenuItem()
        menuItem.view = topView.view
        
        menu.addItem(menuItem)
        menu.addItem(NSMenuItem.separator())
        
        return menu
    }
}
