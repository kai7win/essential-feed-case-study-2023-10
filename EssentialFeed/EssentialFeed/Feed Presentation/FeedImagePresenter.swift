//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2024/1/2.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
