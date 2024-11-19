//
//  CounterView.swift
//  Counter_iOS_TDD
//
//  Created by Guillermo Cifre on 19/11/24.
//

import SwiftUI

struct CounterView: View {
    
    @EnvironmentObject var viewModel: CounterViewModel
    
    var body: some View {
        VStack {
            Text("\(viewModel.counter)")
                .font(.system(size: 100))
                .accessibilityIdentifier("counter")
            HStack {
                Button {
                    viewModel.increment()
                } label: {
                    Circle()
                        .fill(.pink)
                        .frame(width: 50, height: 50)
                        .shadow(radius: 5)
                        .overlay {
                            Image(systemName: "plus")
                                .foregroundStyle(.white)
                                .font(.system(size: 20, weight: .bold))
                        }
                }
                .accessibilityLabel("Increment counter")
                .accessibilityIdentifier("incrementButton")
                Button {
                    viewModel.reset()
                } label: {
                    Text("Reset")
                        .font(.system(size: 20))
                        .foregroundColor(.pink)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.pink, lineWidth: 1)
                        }
                        .shadow(radius: 5)
                }
                .disabled(viewModel.counter == 0)
                .padding()
                .accessibilityLabel("Reset counter")
                .accessibilityIdentifier("resetButton")
                Button {
                    viewModel.decrement()
                } label: {
                    Circle()
                        .fill(.pink)
                        .frame(width: 50, height: 50)
                        .shadow(radius: 5)
                        .overlay {
                            Image(systemName: "minus")
                                .foregroundStyle(.white)
                                .font(.system(size: 20, weight: .bold))
                        }
                }
                .disabled(viewModel.counter == 0)
                .accessibilityLabel("Decrement counter")
                .accessibilityIdentifier("decrementButton")
            }
            
        }
    }
}

#Preview {
    CounterView()
}
