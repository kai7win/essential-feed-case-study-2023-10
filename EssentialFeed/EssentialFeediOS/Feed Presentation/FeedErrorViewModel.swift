//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Kai Chi Tsao on 2024/1/2.
//

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
