//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2023/10/20.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
