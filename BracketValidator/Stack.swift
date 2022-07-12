//
//  Stack.swift
//  BracketValidator
//
//  Created by Bruce Burgess on 7/11/22.
//

import Foundation

struct Stack<T> {
    private var elements:[T] = []
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var count: Int {
        return elements.count
    }
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    
    mutating func pop() -> T? {
        return elements.popLast()
    }
    
    func peek() -> T? {
        return elements.last
    }
}
