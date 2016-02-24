//
//  Movie+CoreDataProperties.swift
//  watch-this
//
//  Created by Holly Klose on 2/24/16.
//  Copyright © 2016 Holly Klose. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var titleLbl: String?
    @NSManaged var descLbl: String?
    @NSManaged var imdbLink: String?
    @NSManaged var plotLbl: String?
    @NSManaged var movieImg: NSData?

}
