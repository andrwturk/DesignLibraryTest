//
//  Networking.swift
//  DaimlerTalentTest
//
//  Created by Andrew Turkin on 24.03.18.
//  Copyright © 2018 Andrew Trukin. All rights reserved.
//

import Moya
class DefaultNetworkSession: NetworkSession {
    lazy var networkService = MoyaProvider<NetworkService>()
    
    func fetchRepositories(completion: @escaping ((_ response: NetworkingResponse<[Repository]>) -> Void)) {
        networkService.request(.fetch) { result in
            switch result {
            case let .success(response):
                DispatchQueue.global(qos: .background).async {
                    do {
                        let repositories = try JSONDecoder().decode([Repository].self, from: response.data)
                        DispatchQueue.main.async {
                            completion(.Success(repositories))
                        }
                    } catch {
                        DispatchQueue.main.async {
                            completion(.Fail(error))
                        }
                    }
                }
            case let .failure(error):
                completion(.Fail(error))
            }
        }
    }
}
