//
//  HighScoreData+CoreDataProperties.swift
//  DartsData
//
//  Created by Dakota Raymond on 4/22/17.
//  Copyright © 2017 Dakota Raymond. All rights reserved.
//

import Foundation
import CoreData


extension HighScoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<HighScoreData> {
        return NSFetchRequest<HighScoreData>(entityName: "HighScoreData");
    }

    @NSManaged public var game: String
    @NSManaged public var name: String
    @NSManaged public var score: Int32

}
