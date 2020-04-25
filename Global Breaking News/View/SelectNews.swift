//
//  SelectNews.swift
//  Global Breaking News
//
//  Created by Bekir Duran on 21.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import SwiftUI

struct SelectNews: View {

@Binding var shouldPopToRootView : Bool
    
    
    let lang:String?
    var body: some View {
        VStack {
            
            List {
                link(icon: "list.bullet", label: "All Categories", destination: NewsView(rootIsActive: self.$shouldPopToRootView, langroot: lang ?? "" )  )
                
                link(icon: "person", label: "Business", destination: CategoryedNews(lang: lang!,category: "Business"
                    , shouldPopToRootView:self.$shouldPopToRootView ))
                link(icon: "gamecontroller", label: "Entertainment", destination: CategoryedNews(lang: lang!, category: "Entertainment", shouldPopToRootView:$shouldPopToRootView))
                link(icon: "waveform.path.ecg", label: "Health", destination: CategoryedNews(lang: lang!, category: "Health", shouldPopToRootView:$shouldPopToRootView))
                link(icon: "hexagon", label: "Science", destination: CategoryedNews(lang: lang!, category: "Science", shouldPopToRootView:$shouldPopToRootView))
                link(icon: "sportscourt", label: "Sports", destination: CategoryedNews(lang: lang!, category: "Sports", shouldPopToRootView:$shouldPopToRootView))
                link(icon: "desktopcomputer", label: "Technology", destination: CategoryedNews(lang: lang!, category: "Technology", shouldPopToRootView:$shouldPopToRootView))
                returnButon
            }.navigationBarTitle(Text("\(lang!) | Categories"), displayMode: .large)
            
        }
        
    }
    
// MARK: - Return Main Screen
    var returnButon : some View { Button(action: {
        self.shouldPopToRootView = false
    }) {
        HStack {
            Image(systemName: "return") // set image here
            Text("Select Country")
        }.foregroundColor(.black)
        }
    }
}

// MARK: - NavigationLink Func.
private func link<Destination: View>(icon: String, label: String, destination: Destination) -> some View {
    return NavigationLink(destination: destination) {
        HStack {
            Image(systemName: icon)
            Text(label)
            
        }
    }
}


