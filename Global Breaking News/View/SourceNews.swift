//
//  SourceNews.swift
//  Global Breaking News
//
//  Created by Bekir Duran on 23.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import SwiftUI



struct SourceNews: View {
    
    let url:String?
    let title:String?
    
    var body: some View {
        WebView(urlStr: url)
        .navigationBarTitle(Text(url ?? ""))
    }
}

