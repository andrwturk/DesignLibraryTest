//
//  ViewController.swift
//  DesignLibrary
//
//  Created by Andrew Turkin on 10.04.18.
//  Copyright © 2018 Andrew Trukin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    fileprivate let viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.delegate = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Interface builder approach is not supported")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // setup view
    }
    
    func setupUI() {
        let tableView = UITableView()
        
//        tableView.translatesAuto
    }
}

extension ViewController: ViewModelDelegate {
    func viewModelDidStartUpdate(viewModel: ViewModel) { }
    func viewModelDidEndUpdate(viewModel: ViewModel) { }
    func viewModelDidFailUpdate(viewModel: ViewModel, withError error: Error) { }
}

