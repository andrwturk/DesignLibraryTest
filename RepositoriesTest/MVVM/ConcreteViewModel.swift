//
//  DefaultViewModel.swift
//  DesignLibrary
//
//  Created by Andrew Turkin on 08.04.18.
//  Copyright © 2018 Andrew Trukin. All rights reserved.
//

class ConcreteViewModel: ViewModel {
    var dataBinder: DataBinder = WritingDataBinder()
    var writingDataBinder: WritingDataBinder { get{ return dataBinder as! WritingDataBinder } }
    weak var delegate: ViewModelDelegate?
    // define implementation for commands here
}
