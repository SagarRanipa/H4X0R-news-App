//
//  PostData.swift
//  H4X0R Hacker News
//
//  Created by Sagar patel on 2021-06-26.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
