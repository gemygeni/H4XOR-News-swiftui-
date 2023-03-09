//
//  ContentView.swift
//  H4XOR News
//
//  Created by AHMED GAMAL  on 08/03/2023.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var networkManager = NetworkingManager()
     
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }.navigationBarTitle("H4XOR News")
                .onAppear{
                    self.networkManager.fetchResults()
                }
            }
         }
     }

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

