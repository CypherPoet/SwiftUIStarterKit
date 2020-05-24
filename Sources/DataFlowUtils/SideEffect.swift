//
//  SideEffect.swift
//
//  Created by CypherPoet on 10/30/19.
// ✌️
//

import Combine


public protocol SideEffect {
    associatedtype AppAction
    associatedtype AppEnvironment

    func mapToAction(using environment: AppEnvironment) -> AnyPublisher<AppAction, Never>
}

