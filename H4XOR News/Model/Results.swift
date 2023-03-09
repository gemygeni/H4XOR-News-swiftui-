//
//  Results.swift
//  H4XOR News
//
//  Created by AHMED GAMAL  on 09/03/2023.
//

import Foundation
struct Results : Codable{
    var hits : [Post]
}
struct Post : Identifiable, Codable{
    var id : String{
        return objectID
    }
    let objectID : String
    let points : Int
    let title : String
    let url : String?
}
