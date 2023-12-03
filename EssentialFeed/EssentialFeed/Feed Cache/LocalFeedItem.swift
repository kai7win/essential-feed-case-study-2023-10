//
//  LocalFeedItem.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2023/12/3.
//

import Foundation

public struct LocalFeedItem:Equatable{
    public let id:UUID
    public let description:String?
    public let location:String?
    public let imageURL:URL
    
    public init(id: UUID, description: String?, location: String?, imageURL: URL) {
        self.id = id
        self.description = description
        self.location = location
        self.imageURL = imageURL
    }
}
