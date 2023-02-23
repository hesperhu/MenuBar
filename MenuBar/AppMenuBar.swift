//
//  AppMenuBar.swift
//  MenuBar
//
//  Created by hesper on 2023-02-23(Thu).
//

import Foundation
import SwiftUI

class AppMenuBar: NSObject {
    let menu = NSMenu()
    
    func createMenu() -> NSMenu {
        
        let menuView = VStack {
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
