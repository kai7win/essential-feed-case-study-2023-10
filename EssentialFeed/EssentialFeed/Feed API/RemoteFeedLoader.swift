//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2023/10/21.
//

import Foundation

public typealias RemoteFeedLoader = RemoteLoader<[FeedImage]>

public extension RemoteFeedLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: FeedItemsMapper.map)
    }
}
