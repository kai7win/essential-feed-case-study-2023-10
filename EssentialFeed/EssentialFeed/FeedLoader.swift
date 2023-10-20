//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2023/10/20.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
