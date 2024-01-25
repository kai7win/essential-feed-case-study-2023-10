//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2024/1/9.
//

import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
