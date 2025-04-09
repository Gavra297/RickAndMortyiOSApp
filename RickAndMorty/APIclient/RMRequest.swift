//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by L G on 8. 4. 2025..
//

import Foundation

/// Object that repesents a siglet API call
final class RMRequest{
    //base URL
    //Endpoints
    //Query paramaters
    
    // API Constants
    private struct Constants{
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    //desired endpoint
    private let endpoint: RMEndpoint
    // path components for API if any
    private let pathComponents: Set<String>
    // Query arguments for API if any
    private let queryParameters: [URLQueryItem]
    // Constructed url for the api request in string format
    private var urlString: String{
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue

        if !pathComponents.isEmpty{
            pathComponents.forEach{
                string += "/\($0)"
            }
        }
        if !queryParameters.isEmpty{
            string += "?"
            //name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentString
        }
        
        return string
    }
    
    
    public var url: URL?{
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: Collection of query parameters
    public init(endpoint: RMEndpoint,
                pathComponents: Set<String> = [],
                queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
