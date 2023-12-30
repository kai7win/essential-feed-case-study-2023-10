//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Kai Chi Tsao on 2023/12/30.
//

import Foundation
import EssentialFeed

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    var hasLocation: Bool {
        return location != nil
    }
}
