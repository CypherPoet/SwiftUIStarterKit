//
//  SideEffect.swift
//
//  Created by CypherPoet on 10/30/19.
// ✌️
//

import Foundation
import Combine


public protocol SideEffect {
    associatedtype Action
    
    func mapToAction() -> AnyPublisher<Action, Never>
}
