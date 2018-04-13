//
//  DataBinder.swift
//  DesignLibrary
//
//  Created by Andrew Turkin on 08.04.18.
//  Copyright © 2018 Andrew Trukin. All rights reserved.
//

protocol DataBinder: class {
    var numberOfRows: Int { get }
    func rowAtIndex(_ index: Int) -> Repository
}

class WritingDataBinder: DataBinder {
    var repositories: [Repository] = []
}
