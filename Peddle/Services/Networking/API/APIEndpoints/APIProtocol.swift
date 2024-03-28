//
//  APIProtocol.swift
//  Peddle
//
//  Created by Yue chen Yu on 2024-03-27.
//

import Foundation

protocol APIProtocol: RawRepresentable<String> {
    static var baseUrl: String { get }
}

extension APIProtocol {
    init?(rawValue: String) {
        nil
    }
}
