//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2023/12/3.
//

import Foundation

public protocol FeedStore{
    
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertionCompletion = (Error?) -> Void
    
    func deleteCachedFeed(completion:@escaping DeletionCompletion)
    func insert(_ items:[LocalFeedItem],timestamp:Date,completion:@escaping InsertionCompletion)
}
