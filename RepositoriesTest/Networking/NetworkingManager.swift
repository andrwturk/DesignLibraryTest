//
//  NetworkingManager.swift
//  DesignLibrary
//
//  Created by Andrew Turkin on 10.04.18.
//  Copyright © 2018 Andrew Trukin. All rights reserved.
//

import Foundation

class NetworkingManager {
    private let session: NetworkSession
    
    init(session: NetworkSession = DefaultNetworkSession()) {
        self.session = session
    }
    
    func fetchRepositories(completion:  @escaping ((_ response: NetworkingResponse<[Repository]>) -> Void)) {
        session.fetchRepositories(completion: completion)
    }
}
