//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2024/1/2.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?

    public var hasLocation: Bool {
        return location != nil
    }
}
