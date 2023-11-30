//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Kai Chi Tsao on 2023/11/30.
//

import XCTest

class LocalFeedLoader{
    
    init(store:FeedStore){
        
    }
}


class FeedStore{
    var deleteCachedFeedCallCount = 0
}


class CacheFeedUseCaseTests:XCTestCase{
    
    func test_init_doesNotDeleteCacheUponCreation(){
        let store = FeedStore()
        _ = LocalFeedLoader(store:store)
        
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }
    
}
