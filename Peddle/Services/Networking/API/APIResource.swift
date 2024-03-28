//
//  APIResource.swift
//  Peddle
//
//  Created by Yue chen Yu on 2024-03-27.
//

import Foundation

protocol APIResource {
    associatedtype ModelType: Decodable
    associatedtype API: APIProtocol

    var pathToAppend: API { get }
}

extension APIResource {
    var queryItems: [URLQueryItem] { [] }
    var keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy { .convertFromSnakeCase }

    var url: URL? {
        URL(string: API.baseUrl)?
            .appendingPathComponent(pathToAppend.rawValue)
            .appending(queryItems: queryItems)
    }
}
