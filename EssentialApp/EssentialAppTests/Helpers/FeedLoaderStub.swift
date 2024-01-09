//
//  FeedLoaderStub.swift
//  EssentialAppTests
//
//  Created by Kai Chi Tsao on 2024/1/9.
//

import EssentialFeed

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result
    
    init(result: FeedLoader.Result) {
        self.result = result
    }

    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
