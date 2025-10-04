//
//  Vec2Tests.swift
//  visgraph-swift
//
//  Created by sabotzs on 04.10.25.
//

import Testing
@testable import visgraph_swift

@MainActor
struct Vec2AdditionTests {
    @Test(.tags(.vec2))
    func additionWithZero() async throws {
        let u = Vec2.zero
        let v = Vec2(x: 2, y: 3)

        let res = u + v

        #expect(res == v)
    }

    @Test(.tags(.vec2))
    func additionOfVectors() async throws {
        let u = Vec2(x: 1, y: 2)
        let v = Vec2(x: 0, y: -3)

        let res = u + v

        #expect(res == Vec2(x: 1, y: -1))
    }
}

@MainActor
struct Vec2SubtractionTests {
    @Test(.tags(.vec2))
    func subtractingZero() async throws {
        let u = Vec2(x: 1, y: 2)
        let v = Vec2.zero

        let res = u - v

        #expect(res == u)
    }

    @Test(.tags(.vec2))
    func subtractingFromZero() async throws {
        let u = Vec2.zero
        let v = Vec2(x: 1, y: 2)

        let res = u - v

        #expect(res == Vec2(x: -1, y: -2))
    }

    @Test(.tags(.vec2))
    func subtractingNonZeroVectors() async throws {
        let u = Vec2(x: 3, y: 1)
        let v = Vec2(x: 1, y: -2)

        let res = u - v

        #expect(res == Vec2(x: 2, y: -1))
    }
}