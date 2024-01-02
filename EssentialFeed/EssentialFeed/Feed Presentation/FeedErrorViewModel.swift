//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2024/1/2.
//

public struct FeedErrorViewModel {
    public let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
