//
//  RepositoryMO.swift
//  RepoMonitor
//
//  Created by Rogier Bom on 10-11-15.
//  Copyright © 2015 Rogier Bom. All rights reserved.
//

import Cocoa
import CoreData

class RepositoryMO: NSManagedObject {
    
    @NSManaged var status: String
    @NSManaged var location: String

}
