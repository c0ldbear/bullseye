//
//  Game.swift
//  Bullseye-v1
//
//  Created by Teddy Juhlin-Henricson on 2022-09-28.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        //let difference = self.target - sliderValue
        let difference = abs(self.target - sliderValue)
        var bonus = 0
        
        if difference == 0 {
            bonus = 100
        } else if difference < 3 {
            bonus = 50
        }
        
        return 100 - difference + bonus
    }
    
    mutating func startNewRound(points: Int) {
        score += points
        round += 1
        target = random()
    }
    
    mutating func restartGame() {
        score = 0
        round = 1
        target = random()
    }
    
    private mutating func random() -> Int{
        return Int.random(in: 1...100)
    }
    
}
