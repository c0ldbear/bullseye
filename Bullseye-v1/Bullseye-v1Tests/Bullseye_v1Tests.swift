//
//  Bullseye_v1Tests.swift
//  Bullseye-v1Tests
//
//  Created by Teddy Juhlin-Henricson on 2022-09-28.
//

import XCTest
@testable import Bullseye_v1

final class Bullseye_v1Tests: XCTestCase {
    
    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
    }
    
    override func tearDownWithError() throws {
        game = nil
    }
    
    func testScorePositive() throws {
        let guess = game.target + 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScorenegative() throws {
        let guess = game.target - 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScorePerfect() throws {
        let guess = game.target
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 200)
    }
    
    func testScoreTwoAway() throws {
        let guess = game.target + 2
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 98+50)
    }
    
    func testScoreOneAway() throws {
        let guess = game.target - 1
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 99 + 50)
    }
    
    func testNewRound() throws {
        game.startNewRound(points: 100)
        XCTAssertEqual(game.score, 100)
        XCTAssertEqual(game.round, 2)
    }
    
}
