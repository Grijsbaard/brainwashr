//
//  Storage.swift
//  brainwashr
//
//  Created by Pieter-Jan Delaruelle on 10/06/2020.
//  Copyright © 2020 Pieter-Jan Delaruelle. All rights reserved.
//

import Foundation


class Storage {
    
    static let shared: Storage = Storage()
    
    var objects: [Prompt]
    
    private init() {
        objects = [Prompt]()
    }
}
