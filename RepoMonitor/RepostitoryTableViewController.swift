//
//  RepostitoryTableViewController.swift
//  RepoMonitor
//
//  Created by Rogier Bom on 21-10-15.
//  Copyright © 2015 Rogier Bom. All rights reserved.
//

import Cocoa

class RepostitoryTableViewController: NSViewController, NSTableViewDataSource, NSTableViewDelegate {
    
    
    @IBOutlet weak var repositoryTableView: NSTableView!
    
    
    // MARK: Properties
    
    var repositories: [Repository] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        repositoryTableView.setDataSource(self)
        repositoryTableView.setDelegate(self)
        
        let image1 = NSImage.init(byReferencingFile: "dummy")!
        let repo1 = Repository(status: "current", label: "zbbestel.trunk.dev", location: "/")
        
        let repo2 = Repository(status: "outdated", label: "maaltijdenbestel.trunk.dev", location: "/")
        
        repositories += [repo1, repo2]
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    // MARK: NSTableViewDataSource
    
    func numberOfRowsInTableView(tableView: NSTableView) -> Int {
        return repositories.count
    }
    
    // MARK: NSTableViewDelegate
    
    func tableView(tableView: NSTableView, viewForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSView? {
        
        let view = tableView.makeViewWithIdentifier("repositoryColumn", owner: self) as! NSTableCellView
        
        view.textField!.stringValue = repositories[row].label
        
        return view
    }
}

