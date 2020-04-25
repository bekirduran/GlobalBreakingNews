//
//  WebView.swift
//  Global Breaking News
//
//  Created by Bekir Duran on 20.03.2020.
//  Copyright © 2020 info. All rights reserved.
//


import Foundation
import WebKit
import SwiftUI


struct WebView : UIViewRepresentable{
    let urlStr : String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlStr{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
   
}
