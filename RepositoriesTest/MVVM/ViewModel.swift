//
//  ViewModel.swift
//  DesignLibrary
//
//  Created by Andrew Turkin on 08.04.18.
//  Copyright © 2018 Andrew Trukin. All rights reserved.
//

protocol ViewModel: class {
    // define ViewModel commands
    func fetchRepositoriesPage()
    var dataBinder: DataBinder { get }
    weak var delegate: ViewModelDelegate? { get set }
}

protocol ViewModelDelegate: class {
    func viewModelDidStartUpdate(viewModel: ViewModel)
    func viewModelDidEndUpdate(viewModel: ViewModel)
    func viewModelDidFailUpdate(viewModel: ViewModel, withError error: Error)
}
