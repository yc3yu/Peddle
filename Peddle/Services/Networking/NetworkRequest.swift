//
//  NetworkRequest.swift
//  Peddle
//
//  Created by Yue chen Yu on 2024-03-26.
//

import Foundation

protocol NetworkRequest {
    associatedtype ModelType

    func decode(_ data: Data) throws -> ModelType
    func execute() async throws -> ModelType
}

extension NetworkRequest {
    func load(_ url: URL?) async throws -> ModelType {
        guard let url = url else {
            throw NetworkError.malformedURL
        }

        let (data, response) = try await URLSession.shared.data(from: url)
        try checkHttpStatusCode((data, response))

        return try decode(data)
    }
}

extension NetworkRequest {
    private func checkHttpStatusCode(_ result: (data: Data, response: URLResponse)) throws {
        guard let httpResponse = result.response as? HTTPURLResponse else {
            return
        }

        switch httpResponse.statusCode {
        case 200..<300:
            return
        case 400:
            throw NetworkError.badRequest
        case 401:
            throw NetworkError.unauthorized
        case 402:
            throw NetworkError.paymentRequired
        case 403:
            throw NetworkError.forbidden
        case 404:
            throw NetworkError.notFound
        case 413:
            throw NetworkError.requestEntityTooLarge
        case 422:
            throw NetworkError.unprocessableEntity
        default:
            throw NetworkError.unknown(data: result.data, response: httpResponse)
        }
    }
}
