//
//  ValidateBrackets.swift
//  BracketValidator
//
//  Created by Bruce Burgess on 7/11/22.
//

import Foundation

func validateBracketsFrom(_ string: String) -> Bool {
    let opening: Set<Character> = ["(", "[", "{"]
    let closing: Set<Character> = [")", "]", "}"]
    let bracketPairs: Dictionary<Character, Character> = ["(" : ")", "[" : "]", "{" : "}"]
    var stack = Stack<Character>()
    
    for char in string {
        if opening.contains(char) {
            stack.push(char)
        } else if closing.contains(char) {
            guard let bracket = stack.pop() else {
                return false
            }
            if bracketPairs[bracket] != char {
                return false
            }
        }
    }
    
    if stack.isEmpty {
        return true
    }
    
    return false
}
