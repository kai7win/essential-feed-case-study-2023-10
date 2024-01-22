//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2024/1/22.
//

import Foundation

public enum FeedEndpoint {
    case get
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
