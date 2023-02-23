//
//  AppDelegate.swift
//  MenuBar
//
//  Created by hesper on 2023-02-23(Thu).
//

import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    static private(set) var instance: AppDelegate!
    //设置状态栏变量
    lazy var statusBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    //设置状态栏下拉菜单变量
    let menu = AppMenuBar()
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        //初始化配置状态栏与菜单
        setStatusBar()
    }

    
    
}

extension AppDelegate {
    
    /**
     设置状态栏与下拉菜单参数
     
     ```
     setStatusBar()
     ```
     */
    
    func setStatusBar() {
        AppDelegate.instance = self
        
        statusBarItem.button?.image = NSImage(systemSymbolName: "globe", accessibilityDescription: nil)
        statusBarItem.button?.imagePosition = .imageLeading
        statusBarItem.menu = menu.createMenu()
    }
}
