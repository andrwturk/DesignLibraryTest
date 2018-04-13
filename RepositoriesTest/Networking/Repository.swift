//
//  Repository.swift
//  HappyCars
//
//  Created by Andrew Turkin on 11.04.18.
//  Copyright © 2018 Andrew Trukin. All rights reserved.
//

import Foundation

struct Repository: Decodable {
    let id: Int
    let name: String
    let fork: Bool
}
