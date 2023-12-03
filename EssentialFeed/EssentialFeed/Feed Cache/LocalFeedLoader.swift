//
//  LocalFeedLoader.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2023/12/3.
//

import Foundation

public class LocalFeedLoader{
    
    private let store: FeedStore
    private let currentDate: () -> Date
    
    public typealias SaveResult = Error?
    public typealias LoadResult = LoadFeedResult
    
    public init(store:FeedStore,currentDate:@escaping () -> Date){
        self.store = store
        self.currentDate = currentDate
    }
    
    public func save(_ feed:[FeedImage],completion:@escaping (SaveResult) -> Void){
        store.deleteCachedFeed { [weak self] error in
            guard let self = self else { return }
            
            if let cacheDeletionError = error{
                completion(cacheDeletionError)
            }else{
               cache(feed, with: completion)
            }
            
        }
    }
    
    public func load(completion:@escaping(LoadResult) -> Void){
        store.retrieve { result in
            switch result {
            case let .failure(error):
                completion(.failure(error))
            case let .found(feed,_):
                completion(.success(feed.toModels()))
            case .empty:
                completion(.success([]))
            }
        }
    }
    
    private func cache(_ feed:[FeedImage],with completion:@escaping (SaveResult) -> Void){
        store.insert(feed.toLocal(),timestamp:currentDate()) { [weak self] error in
            guard self != nil else { return }
            completion(error)
        }
    }
    
}


private extension Array where Element == FeedImage{
    func toLocal() -> [LocalFeedImage]{
        return map { LocalFeedImage(id: $0.id, description: $0.description, location: $0.location, url: $0.url) }
    }
}

private extension Array where Element == LocalFeedImage{
    func toModels() -> [FeedImage]{
        return map { FeedImage(id: $0.id, description: $0.description, location: $0.location, url: $0.url) }
    }
}
