//
//  Reducer.swift
//
//  Created by CypherPoet on 10/30/19.
// ✌️
//

import Foundation


// 📝 "World" is intended as a container for global application objects. This is
// useful for allowing reducers to access these objects.
// (For more information, see the talk ["How To Control The World"](https://vimeo.com/291588126).


public struct Reducer<State, Action, World> {
    public let reduce: (inout State, Action, World) -> Void


    public init(reduce: @escaping (inout State, Action, World) -> Void) {
        self.reduce = reduce
    }
}
