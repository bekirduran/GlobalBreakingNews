//
//  ImageFetcher.swift
//  Global Breaking News
//
//  Created by Bekir Duran on 20.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import Foundation
import SwiftUI
import Combine


class ImageLoader: ObservableObject {
    @Published var dataIsValid = false
    var data:Data?

    init(urlString:String) {
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.dataIsValid = true
                self.data = data
            }
        }
        task.resume()
    }
}


