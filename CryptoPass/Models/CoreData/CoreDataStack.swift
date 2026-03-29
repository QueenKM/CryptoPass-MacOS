//
//  CoreDataStack.swift
//  CryptoPass
//
//  Created by Kristina Mateva on 24.12.24.
//


import CoreData

class CoreDataStack {
    static let shared = CoreDataStack()

    // Persistent Container
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "CryptoPassModel") // Заменете с името на вашия .xcdatamodeld файл
        container.loadPersistentStores { _, error in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()

    // Managed Object Context
    var context: NSManagedObjectContext {
        return persistentContainer.viewContext
    }

    // Запазване на промените в Core Data
    func saveContext() {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
