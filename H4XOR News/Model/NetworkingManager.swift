//
//  NetworkingManager.swift
//  H4XOR News
//
//  Created by AHMED GAMAL  on 09/03/2023.
//

import SwiftUI
class NetworkingManager : ObservableObject{
 @Published var posts = [Post]()
     func fetchResults(){
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, _, error in
                guard let safeData = data else{return}
                if let fetchedResults = self.parseJson(data: safeData, responseType: Results.self){
                    DispatchQueue.main.async {
                        self.posts = fetchedResults.hits
                    }
                }
            }
            task.resume()
        }
    }
    
    
    func parseJson<ResponseType : Codable>(data : Data, responseType: ResponseType.Type) ->  ResponseType?{
        let decoder = JSONDecoder()
        do{
            let object =   try decoder.decode(ResponseType.self, from: data)
            return object
        }
        catch{
                print(error.localizedDescription)
            return nil

        }
    }
    
}
