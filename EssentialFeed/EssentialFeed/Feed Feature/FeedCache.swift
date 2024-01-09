//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2024/1/9.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
