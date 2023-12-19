//
//  CoreDataFeedStore.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2023/12/19.
//

import CoreData

public final class CoreDataFeedStore: FeedStore {
    
    private let container: NSPersistentContainer
    
    public init(bundle: Bundle = .main) throws {
        container = try NSPersistentContainer.load(modelName: "FeedStore", in: bundle)
    }
    
    public func retrieve(completion: @escaping RetrievalCompletion) {
        completion(.empty)
    }
    
    public func insert(_ items: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {
        
    }
    
    public func deleteCachedFeed(completion: @escaping DeletionCompletion) {
        
    }
}

private extension NSPersistentContainer {
    
    enum LoadError: Swift.Error {
        case modelNotFound
        case failedToLoadPersistentStores(Swift.Error)
    }
    
    static func load(modelName name: String, in bundle: Bundle) throws -> NSPersistentContainer {
        
        guard let model = NSManagedObjectModel.with(name: name, in: bundle) else {
            throw LoadError.modelNotFound
        }
        
        let container = NSPersistentContainer(name: name, managedObjectModel: model)
        var loadError: Swift.Error?
        container.loadPersistentStores { loadError = $1 }
        try loadError.map { throw LoadError.failedToLoadPersistentStores($0) }
        
        return container
    }
    
}

private extension NSManagedObjectModel {
    
    static func with(name: String, in bundle: Bundle) -> NSManagedObjectModel? {
        return bundle
            .url(forResource: name, withExtension: "momd")
            .flatMap { NSManagedObjectModel(contentsOf: $0) }
    }
    
}

private class ManagedCache: NSManagedObject {
    @NSManaged var timestamp: Data
    @NSManaged var feed: NSOrderedSet
}

private class ManagedFeedImage: NSManagedObject {
    @NSManaged var id: UUID
    @NSManaged var imageDescription: String?
    @NSManaged var location: String?
    @NSManaged var url: URL
    @NSManaged var cache: ManagedCache
}
