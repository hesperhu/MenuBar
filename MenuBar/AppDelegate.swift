//
//  AppDelegate.swift
//  MenuBar
//
//  Created by hesper on 2023-02-23(Thu).
//

import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    static private(set) var instance: AppDelegate!
    lazy var statusBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    let menu = AppMenuBar()
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        AppDelegate.instance = self
        
        statusBarItem.button?.image = NSImage(systemSymbolName: "globe", accessibilityDescription: nil)
        statusBarItem.button?.imagePosition = .imageLeading
        statusBarItem.menu = menu.createMenu()
        
        
    }
    
    
}
