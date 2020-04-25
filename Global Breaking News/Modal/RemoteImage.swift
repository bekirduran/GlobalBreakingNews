//
//  RemoteImage.swift
//  Global Breaking News
//
//  Created by Bekir Duran on 20.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import SwiftUI

struct RemoteImage: View {
    
    @ObservedObject var imageLoader:ImageLoader
    var placeholder:Image
    @State var image:UIImage = UIImage()
    
    init(url:String, placeholder:Image = Image(systemName: "photo")) {
        self.placeholder = placeholder
        imageLoader = ImageLoader(urlString:url)
    }
    
    func imageFromData(_ data:Data) -> UIImage {
        UIImage(data: data) ?? UIImage()
    }

    
    var body: some View {
       
            Image(uiImage: imageLoader.dataIsValid ? imageFromData(imageLoader.data!) : UIImage())
            .resizable()
            .aspectRatio(contentMode: .fit)
  //  .frame(width: 75.0, height: 50.0, alignment: .center)
        
}

struct RemoteImage_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImage(url: "")
    }
}
}
