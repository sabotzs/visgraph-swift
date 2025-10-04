//
//  Vec2.swift
//  visgraph-swift
//
//  Created by sabotzs on 22.09.25.
//

import Foundation

struct Vec2: Equatable {
    var x: Float
    var y: Float
}

extension Vec2: AdditiveArithmetic {
    static var zero: Vec2 {
        .init(x: 0, y: 0)
    }

    static func + (lhs: Vec2, rhs: Vec2) -> Vec2 {
        .init(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }

    static func - (lhs: Vec2, rhs: Vec2) -> Vec2 {
        .init(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
    }
}
