//
//  NetworkManager.swift
//  Athena Call Center
//
//  Created by Nick Black on 8/7/24.
//

import Foundation

protocol APIClient {
    func get<T: Decodable>(url: URL) async throws -> T
    func post<T: Decodable, U: Encodable>(url: URL, body: U) async throws -> T
}

class NetworkManager: APIClient {
    static let shared = NetworkManager()
    private let urlCache: URLCache
    
    init(urlCache: URLCache = .shared) {
        self.urlCache = urlCache
    }
    
    func get<T: Decodable>(url: URL) async throws -> T {
        var request = URLRequest(url: url)
        request.addValue("900822ef-aa1c-4f08-aae6-f070919b56fa", forHTTPHeaderField: "clientId")
        request.addValue("Basic dmVsbytnenFtdTlZVFd2TXNuTnoxOm1EY3VxY0R5Tm9zSEtGTnk=", forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "GET"
        
        if let cachedResponse = urlCache.cachedResponse(for: request) {
            print("cached response")
            let decodedData = try JSONDecoder().decode(T.self, from: cachedResponse.data)
            return decodedData
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        let convertedString = String(data: data, encoding: String.Encoding.utf8) // the data will be converted to the string

        if let allHTTPHeaderFields = request.allHTTPHeaderFields, let convertedString {
            print(allHTTPHeaderFields, convertedString)
        }
        
        
        if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 {
            let cachedResponse = CachedURLResponse(response: response, data: data)
            urlCache.storeCachedResponse(cachedResponse, for: URLRequest(url: url))
        }
        
        let decodedData = try JSONDecoder().decode(T.self, from: data)
        
        return decodedData
    }
    
    func post<T: Decodable, U: Encodable>(url: URL, body: U) async throws -> T {
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try JSONEncoder().encode(body)
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let decodedData = try JSONDecoder().decode(T.self, from: data)
        return decodedData
    }
}

extension NetworkManager {
    enum NetworkError: Error {
        case timeOut, connectionFailure, noData, invalidURL
    }
}
