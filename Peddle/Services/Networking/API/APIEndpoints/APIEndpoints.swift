//
//  APIEndpoints.swift
//  Peddle
//
//  Created by Yue chen Yu on 2024-03-27.
//

import Foundation

enum APIEndpoints {
    enum Peddle: String, APIProtocol {
        static let baseUrl = URL(string: "") // Replace later when endpoint is set up

        case servicesList = "services-list"
    }
}
