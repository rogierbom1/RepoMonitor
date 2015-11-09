//
//  RepositoryViewController.swift
//  RepoMonitor
//
//  Created by Rogier Bom on 30-10-15.
//  Copyright © 2015 Rogier Bom. All rights reserved.
//

import Cocoa

class RepositoryViewController: NSViewController {

    @IBOutlet weak var workingCopyLabel: NSTextField!
    @IBOutlet weak var workingCopyPath: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    // MARK: IBActions
    
    @IBAction func saveRepository(sender: NSButton) {
        
        let label = workingCopyLabel.stringValue
        let location = workingCopyPath.stringValue
        let repository = Repository(status: "new", label: label, location: location)
        
        
        self.dismissViewController(self)
    }
    
    
    @IBAction func cancelRepositorySave(sender: NSButton) {
        self.dismissViewController(self)
    }
}
