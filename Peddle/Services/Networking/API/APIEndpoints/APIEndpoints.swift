//
//  APIEndpoints.swift
//  Peddle
//
//  Created by Yue chen Yu on 2024-03-27.
//

import Foundation

enum APIEndpoints {
    enum Peddle: APIProtocol {
        static let baseUrl = "" // Replace later when endpoint is set up

        case basePathOnly
        case servicesList

        var rawValue: String {
            switch self {
            case .basePathOnly: return ""
            case .servicesList: return "/services-list"
            }
        }
    }
}
