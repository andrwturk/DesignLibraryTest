//
//  MockNetworkSession.swift
//  HappyCars
//
//  Created by Andrew Turkin on 11.04.18.
//  Copyright © 2018 Andrew Trukin. All rights reserved.
//

import Foundation

class MockNetworkSession: NetworkSession {
    func fetchRepositories(completion: @escaping ((NetworkingResponse<[Repository]>) -> Void)) {
        let LocationsFileName = "repositories"
        do {
            let repositoriesData = try contentsOfFile(LocationsFileName)
            let repositoriesAsArray = try JSONDecoder().decode([Repository].self, from: repositoriesData)
            completion(.Success(repositoriesAsArray))
            
        } catch {
            completion(.Fail(error))
        }
    }
    
    func contentsOfFile(_ filename: String) throws -> Data {
        guard let path = Bundle.main.path(forResource: filename, ofType: "json") else {
            throw NSError(domain: "Unable to find file \(filename)", code: 1, userInfo: nil)
        }
        guard let contentsData = FileManager.default.contents(atPath: path) else {
            throw NSError(domain: "Can't retrieve object data", code: 1, userInfo: nil)
        }
        
        return contentsData
    }
    
}
