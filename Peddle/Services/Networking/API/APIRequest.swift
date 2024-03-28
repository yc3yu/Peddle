//
//  APIRequest.swift
//  Peddle
//
//  Created by Yue chen Yu on 2024-03-27.
//

import Foundation

class APIRequest<Resource: APIResource> {
    let resource: Resource

    init(resource: Resource) {
        self.resource = resource
    }
}

extension APIRequest: NetworkRequest {
    func decode(_ data: Data) throws -> Resource.ModelType {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = resource.keyDecodingStrategy

        return try decoder.decode(Resource.ModelType.self, from: data)
    }

    func execute() async throws -> Resource.ModelType {
        try await load(resource.url)
    }
}
