//
//  RMService.swift
//  RickAndMorty
//
//  Created by L G on 8. 4. 2025..
//

import Foundation


/// Primary API service object to get RM data
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Pirvatized constructor
    private init(){}
    
    /// Send RM API call
    /// - Parameters:
    ///   - request: request instance
    ///   - type: the type of object we expect to get back
    ///   - completion: callback with data or error
    public func execute<T: Codable>(
        _ request:RMRequest,
        expecting typle : T.Type,
        completion: @escaping (Result<T, Error>) -> Void){}
    
}
