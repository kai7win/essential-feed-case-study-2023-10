//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2024/1/6.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
