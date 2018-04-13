//
//  NetworkService.swift
//  DesignLibrary
//
//  Created by Andrew Turkin on 11.04.18.
//  Copyright © 2018 Andrew Trukin. All rights reserved.
//

import Moya

enum NetworkService {
    case fetch
}

extension NetworkService: TargetType {
    
    var baseURL: URL { return URL(string: "https://api.github.com")! }
    var path: String {
        switch self {
        case .fetch:
            return "/users/xing/repos"
        }
    }
    
    var task: Task {
        switch self {
        case .fetch:
            return .requestPlain
        }
    }
    
    var sampleData: Data {
        switch self {
        case .fetch:
            return Data()
        }
    }
    
    var headers: [String : String]? {
        return nil
    }
    
    var method: Moya.Method {
        switch self {
        case .fetch:
            return .get
        }
    }
}
