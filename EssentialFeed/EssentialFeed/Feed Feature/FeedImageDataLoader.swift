//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Kai Chi Tsao on 2023/12/30.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
