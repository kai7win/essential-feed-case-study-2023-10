//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2024/1/9.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
