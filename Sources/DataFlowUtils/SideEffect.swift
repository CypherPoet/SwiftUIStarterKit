//
//  SideEffect.swift
//
//  Created by CypherPoet on 10/30/19.
// ✌️
//

import Combine


public protocol SideEffect {
    associatedtype AppAction
    
    func mapToAction() -> AnyPublisher<AppAction, Never>
}

