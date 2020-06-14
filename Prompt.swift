//
//  Prompt.swift
//  brainwashr
//
//  Created by Pieter-Jan Delaruelle on 10/06/2020.
//  Copyright © 2020 Pieter-Jan Delaruelle. All rights reserved.
//

import Foundation


class Prompt {
    var name: String
    var message: String
    var interval: TimeInterval
    let creation_date: Date
    let id: UUID
    
    var description: String {
        "\(self.name) (\(Int(self.interval / 60.0)) min.)"
    }
    
    init (_ name: String, _ message: String, _ interval: TimeInterval) {
        self.name = name
        self.message = message
        self.interval = interval
        self.creation_date = Date()
        self.id = UUID()
    }
}
