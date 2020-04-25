//
//  PostData.swift
//  Global Breaking News
//
//  Created by Bekir Duran on 20.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import Foundation

struct Results:Decodable {
    let articles:[Post]
}

struct Post:Decodable,Identifiable {
    var id:String{
        return publishedAt ?? ""
    }
    
    
    let author:String?
    let title:String?
    let description:String?
    let url:String?
    let urlToImage:String?
    let publishedAt:String?
    let content:String?
}
