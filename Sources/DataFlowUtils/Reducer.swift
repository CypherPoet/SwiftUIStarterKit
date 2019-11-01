//
//  Reducer.swift
//
//  Created by CypherPoet on 10/30/19.
// ✌️
//

import Foundation


public struct Reducer<State, Action> {
    public let reduce: (inout State, Action) -> Void
}
