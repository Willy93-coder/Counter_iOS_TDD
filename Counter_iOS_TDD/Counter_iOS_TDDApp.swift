//
//  Counter_iOS_TDDApp.swift
//  Counter_iOS_TDD
//
//  Created by Guillermo Cifre on 19/11/24.
//

import SwiftUI

@main
struct Counter_iOS_TDDApp: App {
    
    private var counterViewModel = CounterViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(counterViewModel)
        }
    }
}
