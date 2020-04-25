//
//  NewsView.swift
//  Global Breaking News
//
//  Created by Bekir Duran on 19.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import SwiftUI


struct NewsView: View {
 @Binding var rootIsActive : Bool
 @ObservedObject var networkmng = NewtorkManager()
 public let langroot:String?

    
    var body: some View {
        
        List(networkmng.posts) {pos in
            link(icon: pos.urlToImage ?? K.noimage , label: pos.title ?? "No Title", destination: DetailNews(url: pos.url, newstitle: pos.title, newsdate: pos.publishedAt, newsdescription: pos.description, newsImage: pos.urlToImage, newscontent: pos.content, author: pos.author))
               }
        .navigationBarTitle(Text("\(langroot!) | News"), displayMode: .inline )
        .navigationBarItems(trailing: HStack {

            preferance(destination: SelectNews(shouldPopToRootView: self.$rootIsActive, lang: langroot!)  )
        } )
            
    .onAppear() {
        self.networkmng.fetchData(lang: self.langroot ?? "tr")
    }

    }

}


// MARK: - Listed News with NavigationLink
private func link<Destination: View>(icon: String, label: String, destination: Destination) -> some View {
    return NavigationLink(destination: destination) {
        HStack {
            RemoteImage(url: icon)
            Text(label)
        }
    }

}

// MARK: - Categori Selection Screen
struct preferance<Destination : View>: View {
    var destination:  Destination
    var body: some View {
        NavigationLink(destination: self.destination) { Image(systemName: "slider.horizontal.3") }
        .isDetailLink(false)
    }
}









