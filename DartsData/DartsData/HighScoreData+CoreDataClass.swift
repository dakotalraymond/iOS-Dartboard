//
//  HighScoreData+CoreDataClass.swift
//  DartsData
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
    
    class func deleteGame(context: NSManagedObjectContext, game: String) {
        let fetch = NSFetchRequest<HighScoreData>(entityName: "HighScoreData")
        fetch.predicate = NSPredicate(format: "game == %@", game)
        if let result = try? context.fetch(fetch) {
            for object in result {
                context.delete(object)
            }
        }
    }
    
    class func fetchGame(in context: NSManagedObjectContext, game: String) -> HighScoreClass {
        let fetch = NSFetchRequest<HighScoreData>(entityName: "HighScoreData")
        fetch.predicate = NSPredicate(format: "game == %@", game)
        var highScores = [HighScoreData]()
        do {
            highScores = try context.fetch(fetch)
        } catch {
            highScores = []
        }
        let blankHighScore = HighScoreClass()
        blankHighScore.game = game
        blankHighScore.name = "Nobody"
        blankHighScore.score = 500
        if (highScores.count != 0) {
            blankHighScore.game = highScores[0].game
            blankHighScore.name = highScores[0].name
            blankHighScore.score = highScores[0].score
            return blankHighScore
        } else {
            return blankHighScore
        }
        
    }
}
