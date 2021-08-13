//
//  ContentView.swift
//  H4X0R Hacker News
//
//  Created by Sagar patel on 2021-06-26.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var networkManager = NetworkManager()
    
        var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })
                
            }
          .navigationBarTitle("H4X0R Hacker News")
       }
        .onAppear(perform: {
            networkManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
        
    }
}



//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//]
