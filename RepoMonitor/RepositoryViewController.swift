//
//  RepositoryViewController.swift
//  RepoMonitor
//
//  Created by Rogier Bom on 30-10-15.
//  Copyright © 2015 Rogier Bom. All rights reserved.
//

import Cocoa
import CoreData

class RepositoryViewController: NSViewController {

    @IBOutlet weak var workingCopyLabel: NSTextField!
    @IBOutlet weak var workingCopyPath: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        
    }
    
    private lazy var managedObjectContext: NSManagedObjectContext = {
        let moc = NSManagedObjectContext(concurrencyType: .MainQueueConcurrencyType)
        
        //moc.persistentStoreCoordinator = CoreDataStackManager.
        
        return moc
    }()
    
    private func reloadTableView() {
        let fetchRequest = NSFetchRequest(entityName: "Repository")
        do {
            repositories = try managedObjectContext.executeFetchRequest(fetchRequest) as! [Repository]
        }
        catch {
            
        }
    }
    
    // MARK: IBActions
    
    @IBAction func saveRepository(sender: NSButton) {
        
        let label = workingCopyLabel.stringValue
        let location = workingCopyPath.stringValue
        //let repository = NSEntityDescription.insertNewObjectForEntityForName("Repostitory", inManagedObjectContext: self)
        
        
        self.dismissViewController(self)
    }
    
    
    @IBAction func cancelRepositorySave(sender: NSButton) {
        self.dismissViewController(self)
    }
}
