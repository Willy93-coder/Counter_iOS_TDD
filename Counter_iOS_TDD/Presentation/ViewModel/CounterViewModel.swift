//
//  CounterViewModel.swift
//  Counter_iOS_TDD
//
//  Created by Guillermo Cifre on 19/11/24.
//

import Foundation

class CounterViewModel: ObservableObject {
    @Published var counter: Int
    
    init(counter: Int = 0) {
        self.counter = counter
    }
    
    func increment() {
        counter += 1
    }
    
    func decrement() {
        if counter > 0 {
            counter -= 1
        }
    }
    
    func reset() {
        counter = 0
    }
}
