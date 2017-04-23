//
//  HighScoreData+CoreDataClass.swift
//  Darts
//
//  Created by Dakota Raymond on 4/22/17.
//  Copyright © 2017 Dakota Raymond. All rights reserved.
//

import Foundation
import CoreData

@objc(HighScoreData)
public class HighScoreData: NSManagedObject {
    
    class func save(highscore: HighScoreClass, context: NSManagedObjectContext) {
        guard let score = NSEntityDescription.insertNewObject(forEntityName: "HighScoreData", into: context)
            as? HighScoreData else { return }
        score.name = highscore.name
        score.score = highscore.score
        score.game = highscore.game
        
        context.persist()
        
    }
    
    class func fetch(in context: NSManagedObjectContext) -> [HighScoreData] {
        let fetch = NSFetchRequest<HighScoreData>(entityName: "HighScoreData")
        
        do {
            return try context.fetch(fetch)
        } catch {
            return []
        }
  
    }

}
