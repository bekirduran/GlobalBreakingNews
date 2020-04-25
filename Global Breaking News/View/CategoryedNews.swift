//
//  CategoryedNews.swift
//  Global Breaking News
//
//  Created by Bekir Duran on 21.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import SwiftUI


struct CategoryedNews: View {
    let lang:String?
    let category:String?
    @ObservedObject var networkmng = NewtorkManager()
     @Binding var shouldPopToRootView : Bool
    
    var body: some View {
               List(networkmng.posts) {pos in
                link(icon: pos.urlToImage ?? K.noimage , label: pos.title ?? "No Title", destination: DetailNews(url: pos.url, newstitle: pos.title, newsdate: pos.publishedAt, newsdescription: pos.description, newsImage: pos.urlToImage, newscontent: pos.content, author: pos.author))
                   }
                .navigationBarTitle(Text("\(lang!) | \(category!)"), displayMode: .large)
               .navigationBarItems(trailing: HStack { preferance(destination: SelectNews(shouldPopToRootView: $shouldPopToRootView, lang: lang ?? ""))  } )
                
        .onAppear() {
            self.networkmng.fetchData(lang: self.lang ?? "tr", category: self.category ?? "Busines")
        }
    }
}


// MARK: - NavigationLink Func.

private func link<Destination: View>(icon: String, label: String, destination: Destination) -> some View {
    return NavigationLink(destination: destination) {
        HStack {
            RemoteImage(url: icon)
            Text(label)
        }
    }
}

