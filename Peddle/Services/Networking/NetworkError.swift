//
//  NetworkError.swift
//  Peddle
//
//  Created by Yue chen Yu on 2024-03-26.
//

import Foundation

enum NetworkError: Error {
    case malformedURL

    case badRequest
    case unauthorized
    case paymentRequired
    case forbidden
    case notFound
    case requestEntityTooLarge
    case unprocessableEntity
    case unknown(data: Data, response: URLResponse)

    case invalidResponse(data: Data)
}
