//
//  DetailNews.swift
//  Global Breaking News
//
//  Created by Bekir Duran on 20.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import SwiftUI
import UIKit
import SafariServices



struct DetailNews: View {
    
    let url:String?
    let newstitle:String?
    let newsdate:String?
    let newsdescription:String?
    let newsImage:String?
    let newscontent:String?
    let author:String?
   @State var showSafari = false
   @State var urlString = ""

    
    

    
    var body: some View {
        
       
        VStack(alignment: .center, spacing: 15) {
            List{
            Text(newstitle ?? "No title").bold().font(.system(size: 30))
     
                RemoteImage(url: newsImage ?? K.noimage)
                    .frame(width: 300.0, height: 200.0, alignment: .center)
                
            Text(newsdate ?? "No Date")
                
            Text(newsdescription ?? "")
       
            link(label: newscontent ?? "", destination: SourceNews(url: url ?? "", title: newstitle))

            }
            showSafariFunc()
            // summon the Safari sheet
            .sheet(isPresented: $showSafari) {
                SafariView(url:URL(string: self.urlString)!)
            }
        }.navigationBarTitle(Text("News Details"), displayMode: .inline )
            .padding()
    }
    
    
    // MARK: - SafariOpen Button (a web browser)

    fileprivate func showSafariFunc() -> Button<Text> {
        return Button(action: {
            // update the URL if you'd like to
            self.urlString = self.url ?? "https://www.google.com"
            // tell the app that we want to show the Safari VC
            self.showSafari = true
        }) {
            Text("\(author ?? ""):\(url ?? "www.newsapi.org")").font(.system(size: 10))
        }
    }
    
    

}

// MARK: - NavigationLink Func.

private func link<Destination: View>(label: String, destination: Destination) -> some View {
    return NavigationLink(destination: destination) {
        HStack {
            Text(label)
            
        }
    }
}

// MARK: - SafariViewDelegate

struct SafariView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {

    }

}
