//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2023/10/21.
//

import Foundation

public enum HTTPClientResult {
    case success(Data,HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url:URL, completion: @escaping (HTTPClientResult) -> Void)
}
