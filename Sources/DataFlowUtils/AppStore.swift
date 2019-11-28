//
//  AppStore.swift
//
//  Created by CypherPoet on 10/29/19.
// ✌️
//

import Foundation
import Combine
import SwiftUI


public final class Store<AppState, AppAction>: ObservableObject {
    @Published private(set) public var state: AppState
    
    private let appReducer: Reducer<AppState, AppAction>
    private var cancellables: Set<AnyCancellable> = []
    
    
    public init(initialState: AppState, appReducer: Reducer<AppState, AppAction>) {
        self.state = initialState
        self.appReducer = appReducer
    }
}


// MARK: - Send Actions and Side Effects
extension Store {
    
    public func send(_ action: AppAction) {
        appReducer.reduce(&state, action)
    }
    
    
    /// Asynchronously sends an action after mapping it out of a side effect
    public func send<S: SideEffect>(_ sideEffect: S) where S.Action == AppAction {
        sideEffect
            .mapToAction()
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { [weak self] (appAction) in
                // https://twitter.com/thesunshinejr/status/1186704338686750722
                self?.send(appAction)
            })
            .store(in: &cancellables)
    }
}


// MARK: - Binding

extension Store {
    
    public func binding<Value>(
        for keyPath: KeyPath<AppState, Value>,
        onChange action: @escaping (Value) -> AppAction
    ) -> Binding<Value> {
        Binding<Value>(
            get: { self.state[keyPath: keyPath] },
            set: { self.send(action($0)) }
        )
    }
}
