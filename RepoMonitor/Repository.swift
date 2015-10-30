//
//  Repository.swift
//  RepoMonitor
//
//  Created by Rogier Bom on 21-09-15.
//  Copyright (c) 2015 Rogier Bom. All rights reserved.
//

import Cocoa

class Repository: NSObject, NSCoding {
    
    // MARK: Properties
    
    var status: String
    var label: String
    var location: String
    
    // MARK: Types
    
    struct PropertyKeys {
        static let statusKey = "status"
        static let labelKey = "label"
        static let locationKey = "location"
    }
    
    // MARK: Initialization
    
    override init() {
        self.status = String()
        self.label = String()
        self.location = String()
    }
    
    init(status: String, label: String, location: String) {
        self.status = status
        self.label = label
        self.location = location
        
        super.init()
    }
    
    // MARK: NSCoding
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(status, forKey: PropertyKeys.statusKey)
        aCoder.encodeObject(label, forKey: PropertyKeys.labelKey)
        aCoder.encodeObject(location, forKey: PropertyKeys.locationKey)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let status = aDecoder.decodeObjectForKey(PropertyKeys.statusKey) as! String
        let label = aDecoder.decodeObjectForKey(PropertyKeys.labelKey) as! String
        let location = aDecoder.decodeObjectForKey(PropertyKeys.locationKey) as! String
        
        self.init(status: status, label: label, location: location)
    }
}
