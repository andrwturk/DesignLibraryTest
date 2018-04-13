//
//  NetworkSession.swift
//  DesignLibrary
//
//  Created by Andrew Turkin on 10.04.18.
//  Copyright © 2018 Andrew Trukin. All rights reserved.
//

protocol NetworkSession {
    func fetchRepositories(completion:  @escaping ((_ response: NetworkingResponse<[Repository]>) -> Void))
}

enum NetworkingResponse<T> {
    case Success(T)
    case Fail(Error)
}

