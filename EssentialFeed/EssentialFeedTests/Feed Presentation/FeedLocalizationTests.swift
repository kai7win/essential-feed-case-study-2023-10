//
//  FeedLocalizationTests.swift
//  EssentialFeediOSTests
//
//  Created by Kai Chi Tsao on 2024/1/1.
//

import XCTest
import EssentialFeed

final class FeedLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
    
}

