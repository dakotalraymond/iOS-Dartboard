//
//  Store.swift
//  Darts
//
//  Created by Dakota Raymond on 4/19/17.
//  Copyright © 2017 Dakota Raymond. All rights reserved.
//

import UIKit
import CoreData

class Store {
    
    class func sharedMainContext() -> NSManagedObjectContext {
        assert(Thread.isMainThread, "Wrong Thread")
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }

}

extension NSManagedObjectContext {
    func persist() {
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }
}
