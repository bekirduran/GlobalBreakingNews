//
//  NetworkManager.swift
//  Global Breaking News
//
//  Created by Bekir Duran on 20.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import Foundation

class NewtorkManager : ObservableObject{
    
  @Published  var posts = [Post]()

    func fetchData(lang:String ) {
        if let url = URL(string: "https://newsapi.org/v2/top-headlines?country=\(lang)&apiKey=cb83560a85434da1942031c07ce73d68"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do {
                      let results = try  decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.articles
                            }
                           
                        }
                        catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    func fetchData(lang:String , category:String) {
        if let url = URL(string: "https://newsapi.org/v2/top-headlines?country=\(lang)&category=\(category)&apiKey=cb83560a85434da1942031c07ce73d68"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do {
                      let results = try  decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.articles
                            }
                           
                        }
                        catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
