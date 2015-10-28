//
//  AppDelegate.swift
//  RepoMonitor
//
//  Created by Rogier Bom on 21-10-15.
//  Copyright © 2015 Rogier Bom. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    // MARK: Statusbar item
    
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-2)

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        if let button = statusItem.button {
            button.image = NSImage(named: "svnLogo")
            button.action = Selector("updateAll:")
        }
        
        let menu = NSMenu()
        
        menu.addItem(NSMenuItem(title: "Update all", action: Selector("updateAll:"), keyEquivalent: "u"))
        menu.addItem(NSMenuItem.separatorItem())
        menu.addItem(NSMenuItem(title: "Manage repositories", action: Selector("manageRepos:"), keyEquivalent: "m"))
        menu.addItem(NSMenuItem(title: "Quit RepoWatcher", action: Selector("terminate:"), keyEquivalent: "q"))
        
        statusItem.menu = menu
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    func updateAll(sender: AnyObject) {
        let quoteText = "Bla bla bla"
        
        print(quoteText, terminator: "")
    }
    
    func manageRepos(sender: AnyObject) {
        
    }
    
    func notify(message: String) {
        let notification:NSUserNotification = NSUserNotification()
        notification.title = "Repository updated"
        notification.subtitle = "Subtitle"
        notification.informativeText = "Informative text"
        
        notification.soundName = NSUserNotificationDefaultSoundName
        notification.deliveryDate = NSDate(timeIntervalSinceNow: 5)
        
        // var notificationCenter:NSUserNotificationCenter = NSUserNotificationCenter()
        
    }

}

