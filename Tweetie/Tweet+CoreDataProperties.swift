//
//  Tweet+CoreDataProperties.swift
//  Tweetie
//
//  Created by Eddie Kaiger on 11/8/15.
//  Copyright © 2015 Eddie Kaiger. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Tweet {

    @NSManaged var postID: NSNumber?
    @NSManaged var username: String?
    @NSManaged var content: String?
    @NSManaged var date: NSDate?

}
