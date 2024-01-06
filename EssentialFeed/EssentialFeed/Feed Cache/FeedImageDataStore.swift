//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2024/1/6.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
