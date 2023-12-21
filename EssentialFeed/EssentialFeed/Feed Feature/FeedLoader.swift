//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2023/10/20.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
