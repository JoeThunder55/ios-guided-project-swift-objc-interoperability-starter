//
//  PersonController.swift
//  Star-Wars-Hybrid
//
//  Created by Paul Solt on 3/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import UIKit

enum APIError: String, Error {
    case DataNilError
    case JSONDecodeError
    case JSONMissingResults
}
@objc(LSIPersonController)
class PersonController: NSObject {
    // docs: https://lambdaswapi.herokuapp.com/people
    private let baseURL = URL(string: "https://lambdaswapi.herokuapp.com/api/people")!
    @objc static let shared = PersonController()
    
    // TODO: Add LSIPerson.h to bridging header
    // TODO: Add PersonController.swift to target
    func searchForPeople(with searchTerm: String, completion: @escaping ([Person]?, Error?) -> Void) {
        var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)!
        let searchItem = URLQueryItem(name: "search", value: searchTerm)
        components.queryItems = [searchItem]
        let url = components.url!
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                return completion(nil, error)
            }
            
            guard let data = data else {
                DispatchQueue.main.async {
                    completion(nil, APIError.DataNilError)
                }
                 return
            }
            do {
                guard let dictionary = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
                    throw APIError.JSONDecodeError
                }
                guard let personDictionaries = dictionary["results"] as? [[String: Any]] else {
                    throw APIError.JSONMissingResults
                }
                let people = personDictionaries.compactMap { Person(dictionary: $0)}
                    DispatchQueue.main.async {
                        completion(people, nil)
                    }
                
            } catch {
                DispatchQueue.main.async {
                    completion(nil, error)
                }
                return
            }
            
            
        }.resume()
    }
}
