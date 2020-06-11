//
//  Prompt.swift
//  brainwashr
//
//  Created by Pieter-Jan Delaruelle on 10/06/2020.
//  Copyright © 2020 Pieter-Jan Delaruelle. All rights reserved.
//

import Foundation


class Prompt {
    var name:String
    var message: String
    let creation_date: Date
    let id: UUID
    
    var description: String {
        "\(self.name) (\(self.id))"
    }
    
    init (_ name: String, _ message: String) {
        self.name = name
        self.message = message
        self.creation_date = Date()
        self.id = UUID()
    }
}
