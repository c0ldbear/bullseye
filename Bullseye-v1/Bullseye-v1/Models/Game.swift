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
        let difference = self.target - sliderValue
        return 100 - Int(difference.magnitude)
    }
}
