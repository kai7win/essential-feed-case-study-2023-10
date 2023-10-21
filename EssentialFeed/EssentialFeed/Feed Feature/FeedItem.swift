//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2023/10/20.
//

import Foundation

public struct FeedItem:Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
