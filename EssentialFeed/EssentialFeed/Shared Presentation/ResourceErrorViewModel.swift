//
//  ResourceErrorViewModel.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2024/1/16.
//

public struct ResourceErrorViewModel {
    public let message: String?
    
    static var noError: ResourceErrorViewModel {
        return ResourceErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> ResourceErrorViewModel {
        return ResourceErrorViewModel(message: message)
    }
}
