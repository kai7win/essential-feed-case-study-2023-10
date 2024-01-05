//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Kai Chi Tsao on 2024/1/5.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }

    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
