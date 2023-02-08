//
//  AppDelegate.swift
//  macTest
//
//  Created by Gustavo da Silva Braghin on 06/02/23.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    
    private var window: NSWindow!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        initalizeWindow()
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
    
    func initalizeWindow() {
        
        let screenSize = NSScreen.main?.frame.size ?? .zero
        let windowSize = NSSize(width: screenSize.width, height: screenSize.height)
        let rect = NSMakeRect(0, 0, windowSize.width, windowSize.height)
        window = NSWindow(contentRect: rect,
                          styleMask: [.miniaturizable, .closable, .resizable, .titled],
                          backing: .buffered,
                          defer: false)
        
        window?.makeKeyAndOrderFront(nil)
        window.title = "Senhasegura"
        window.contentViewController = HomeViewController()
    }
    
}

